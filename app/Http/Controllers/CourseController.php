<?php

namespace App\Http\Controllers;

use Inertia\Inertia;
use App\Models\Course;
use App\Models\Episode;
use Illuminate\Http\Request;
use App\Youtube\YoutubeServices;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Redirect;
use App\Http\Requests\StoreCourseWithEpisodes;

class CourseController extends Controller
{
    public function index()
    {
        $courses = Course::with('user')
            ->select('courses.*', DB::raw(
                '(SELECT COUNT(DISTINCT(user_id))
            FROM completions
            INNER JOIN episodes ON completions.episode_id = episodes.id
            WHERE episodes.course_id = courses.id
            ) AS participants'
            ))->addSelect(DB::raw(
                '(
                    SELECT SUM(duration)
                    FROM episodes
                    WHERE episodes.course_id = courses.id
                ) AS total_duration'
            ))->withCount('episodes')->latest()->paginate(4);


        return Inertia::render('Courses/Index', [
            'courses' => $courses,
        ]);
    }

    public function destroy(Course $id)
    {
        $id->delete();
        return Inertia::render('Courses/Index');
    }

    public function show(int $id)
    {
        $course = Course::where('id', $id)->with('episodes')->first();
        $watched = auth()->user()->episodes;
        return Inertia::render('Courses/Show', [
            'course' => $course,
            'watched' => $watched
        ]);
    }
    public function register()
    {
        return Inertia::render('Courses/Register');
    }

    public function store(StoreCourseWithEpisodes $request, YoutubeServices $ytb)
    {
        $course = Course::create($request->all());

        foreach ($request->input('episodes') as $episode) {
            $episode['course_id'] = $course->id;
            $episode['duration'] = $ytb->handleYoutubeVideoDuration($episode['video_url']);
            Episode::create($episode);
        }

        return Redirect::route('courses.index')->with('success', 'Félicitation, la formation à bien été mise en ligne.');
    }


    public function edit(int $id)
    {
        $course = Course::where('id', $id)->with('episodes')->first();

        return Inertia::render('Courses/Edit', [
            'course' => $course
        ]);
    }

    public function update(StoreCourseWithEpisodes $request)
    {
        $course = Course::where('id', $request->id)->with('episodes')->first();
        $this->authorize('update', $course);
        $course->update($request->all());
        $course->episodes()->delete();

        foreach ($request->episodes as $episode) {
            $episode['course_id'] = $course->id;
            Episode::create($episode);
        }

        return Redirect::route('courses.index')->with('success', 'Félicitations, votre formation a bien été modifiée.');
    }

    public function toggleProgress(Request $request)
    {
        $id = $request->input('episodeId');
        $user = auth()->user();

        $user->episodes()->toggle($id);

        return $user->episodes;
    }
}
