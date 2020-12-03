
<template>
  <app-layout>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
      crossorigin="anonymous"
    />
    <template #header>
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
          <div class="flex">
            <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
              <jet-nav-link
                :href="route('courses.index')"
                :active="route().current('courses.index')"
              >
                Les formations
              </jet-nav-link>
            </div>
            <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
              <jet-nav-link
                :href="route('courses.register')"
                :active="route().current('courses.register')"
              >
                Créer une formation
              </jet-nav-link>
            </div>
          </div>
        </div>
      </div>
    </template>

    <div class="bg-green-200 text-green-500 p-3" v-if="$page.flash.success">
      {{ $page.flash.success }}
    </div>

    <div class="py-3" v-for="course in courses.data" v-bind:key="course.id">
      <div class="mx-8 bg-white rounded shadow p-4">
        <div class="text-sm text-gray-500">
          Mise en ligne par <strong>{{ course.user.name }}</strong>
          <span
            class="text-gray-500 text-sm"
            v-if="parseInt(course.participants) > 0"
            >- {{ course.participants }} étudiant<span
              v-if="parseInt(course.participants) > 1"
              >s</span
            >
            sui<span v-if="parseInt(course.participants) < 2">t</span><span
              v-if="parseInt(course.participants) > 1">vent</span> ce cours.</span
          >
        </div>

        <div class="flex justify-between items-center">
          <div class="text-4xl">{{ course.title }}</div>
          <div class="text-sm text-gray-400">
            {{ course.episodes_count }} épisodes - n°0{{ course.id }}
            </br>
                      <span class="inline-block bg-gray-200 rounded-full px-6 py-1 text-sm font-semibold text-gray-700">
                            {{ convert(course.total_duration) }}</span>

          </div>
        </div>
        <div class="text-sm text-gray-500">{{ course.description }}</div>
        <div class="d-flex justify-content-between align-items-right">
            </br>
          <div class="btn-group">
            <a
              :href="'course/' + course.id"
              class="btn btn-sm btn-outline-dark"
            >
              Afficher
            </a>
            <a
              :href="'courses/edit/' + course.id"
              v-if="course.update"
              class="btn btn-sm btn-outline-dark"
            >
              Editer
            </a>
          </div>
        </div>
      </div>
    </div>
      <inertia-link :href="link.url" class="text-indigo-700 border-gray-500 p-5" v-for="link in courses.links" v-bind:key="link.label">
                    <span v-bind:class="{'text-red-700' : link.active}">{{ link.label }}</span>
                </inertia-link>
  </app-layout>
</template>

<script>
import AppLayout from "./../../Layouts/AppLayout";
import JetApplicationMark from "@/Jetstream/ApplicationMark";
import JetDropdown from "@/Jetstream/Dropdown";
import JetDropdownLink from "@/Jetstream/DropdownLink";
import JetNavLink from "@/Jetstream/NavLink";
import JetResponsiveNavLink from "@/Jetstream/ResponsiveNavLink";

export default {
  components: {
    AppLayout,
    JetApplicationMark,
    JetDropdown,
    JetDropdownLink,
    JetNavLink,
    JetResponsiveNavLink,
  },

  props: ["courses"],

  methods: {
    convert(timestamps) {
      let hours = Math.floor(timestamps / 3600);
      let minutes = Math.floor(timestamps / 60) - hours * 60;
      let seconds = timestamps % 60;
      return (
        hours.toString().padStart(2, 0) +
        ":" +
        minutes.toString().padStart(2, 0) +
        ":" +
        seconds.toString().padStart(2, 0)
      );
    },
  },

  data() {
    return {
      courseList: this.courses,
    };
  },

  mounted() {
    console.log(this.courseList);
  },
};
</script>
