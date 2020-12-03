<template>
  <app-layout>
    <template #header>
      <h2 class="font-semibold text-xl text-gray-800 leading-tight">
        Modification de {{ courseData.title }}
      </h2>
    </template>

    <div class="bg-green-200 text-green-500 p-3" v-if="$page.flash.success">
      {{ $page.flash.success }}
    </div>
    <div class="py-12">
      <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="w-full">
          <form
            class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4"
            @submit.prevent="submit"
          >
            <div class="mb-4">
              <label
                class="block text-gray-700 text-sm font-bold mb-2"
                for="title"
              >
                Titre de la formation
              </label>
              <input
                maxlength="100"
                minlength="7"
                placeholder="Le nom de votre formation..."
                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                id="title"
                type="text"
                v-model="courseData.title"
              />
              <div
                class="text-red-600 mt-2 my-2"
                v-if="$page.errors['episodes.' + index + '.title']"
              >
                {{ $page.errors.title[0] }}
              </div>
            </div>
            <div class="mb-4">
              <label
                class="block text-gray-700 text-sm font-bold mb-2"
                for="description"
              >
                Description de la formation
              </label>
              <textarea
                maxlength="600"
                minlength="40"
                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                id="description"
                type="text"
                v-model="courseData.description"
                placeholder="Décrivez votre formation en utilisant 600 caractères au maximum..."
              ></textarea>
              <div
                class="text-red-600 mt-2 my-2"
                v-if="$page.errors.description"
              >
                {{ $page.errors.description[0] }}
              </div>
            </div>
            <div class="mb-4">
              <h2 class="block text-gray-700 font-bold mb-2">
                Episodes de la formation
              </h2>
              <div
                v-for="(episode, index) in courseData.episodes"
                v-bind:key="index"
              >
                <div class="mb-4">
                  <label
                    class="block text-gray-700 text-sm font-bold mb-2"
                    :for="title - '+index'"
                  >
                    Titre de ce cours n°{{ index + 1 }}
                  </label>
                  <input
                    maxlength="800"
                    minlength="10"
                    placeholder="Entrez l'intitulé de ce chapitre"
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    :id="title - '+index'"
                    type="text"
                    v-model="courseData.episodes[index].title"
                  />
                </div>
                <div
                  class="text-red-600 mt-2 my-2"
                  v-if="$page.errors['episodes.' + index + '.title']"
                >
                  {{ $page.errors["episodes." + index + ".title"][0] }}
                </div>

                <div class="mb-4">
                  <label
                    class="block text-gray-700 text-sm font-bold mb-2"
                    :for="description - '+index'"
                  >
                    Description de l'épisode
                  </label>
                  <input
                    placeholder="Décrivez votre cours..."
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    :id="description - '+index'"
                    type="text"
                    v-model="courseData.episodes[index].description"
                  />
                </div>
                <div
                  class="text-red-600 mt-2 my-2"
                  v-if="$page.errors['episodes.' + index + '.description']"
                >
                  {{ $page.errors["episodes." + index + ".description"][0] }}
                </div>

                <div class="mb-4">
                  <label
                    class="block text-gray-700 text-sm font-bold mb-2"
                    :for="video_url - '+index'"
                  >
                    Adresse lien de l'épisode n°{{ index + 1 }}
                  </label>
                  <input
                    placeholder="Entrez l'URL embed du site où est
                  hébérgé votre vidéo..."
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    :id="video_url - '+index'"
                    type="text"
                    v-model="courseData.episodes[index].video_url"
                  />
                </div>
                <div
                  class="text-red-600 mt-2 my-2"
                  v-if="$page.errors['episodes.' + index + '.video_url']"
                >
                  {{ $page.errors["episodes." + index + ".video_url"][0] }}
                </div>
              </div>
            </div>
            <button
              class="bg-green-600 rounded py-2 px-4 my-2 text-white block"
              v-if="courseData.episodes.length < 100"
              @click.prevent="add"
            >
              +
            </button>
            <button
              class="bg-red-600 rounded py-2 px-4 my-2 text-white block"
              v-if="courseData.episodes.length > 1"
              @click.prevent="remove"
            >
              🗑️
            </button>
            <button
              type="submit"
              class="block rounded bg-indigo-800 py-2 px-3 hover:bg-indigo-600 text-white"
            >
              Enregistrer ma formation
            </button>
          </form>
        </div>
      </div>
    </div>
  </app-layout>
</template>

<script>
import AppLayout from "../../Layouts/AppLayout";

export default {
  components: {
    AppLayout,
  },

  props: ["course"],

  data() {
    return {
      courseData: this.course,
    };
  },
  methods: {
    submit() {
      this.$inertia.patch("/courses/" + this.courseData.id, this.courseData);
    },

    add() {
      this.courseData.episodes.push({
        title: null,
        description: null,
        video_url: null,
      });
    },

    remove() {
      this.courseData.episodes.pop();
    },
  },
};
</script>
