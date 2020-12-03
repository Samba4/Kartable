<?php

namespace App\Youtube;

use DateInterval;
use Illuminate\Support\Facades\Http;

class YoutubeServices
{

    private $key = null;

    public function __construct(string $key)
    {
        $this->key = $key;
    }

    public function handleYoutubeVideoDuration($video_url)
    {
        // récupère l'id à partir de $video_url
        preg_match('/embed\/(.+)/', $video_url, $matches);
        $id = $matches[1]; /// id = première valeur du tableau matches
        // appel à l'api de youtube
        $response = Http::get("https://www.googleapis.com/youtube/v3/videos?key={$this->key}&id={$id}&part=contentDetails");
        $duration = (json_decode($response))->items[0]->contentDetails->duration;
        // convertir en seconde avec DateInterval
        $interval = new DateInterval($duration);
        // calcul des attributs et total
        return $interval->s + $interval->i * 60 + $interval->h * 3600;
    }
}
