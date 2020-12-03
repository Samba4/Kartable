<template>
  <app-layout>
    <template #header>
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="flex justify-between h-16">
          <div class="flex">
            <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
              <jet-nav-link
                :href="route('courses.register')"
                :active="route().current('courses.register')"
              >
                Créer une formation
              </jet-nav-link>
            </div>
            <div class="hidden space-x-8 sm:-my-px sm:ml-10 sm:flex">
                <jet-nav-link
                :href="route('courses.index')"
                :active="route().current('courses.index')"
              >
                Les formations
              </jet-nav-link>
            </div>
          </div>
        </div>
      </div>
    </template>

    <div class="bg-green-200 text-green-500 p-3" v-if="$page.flash.success">
      {{ $page.flash.success }}
    </div>
    <div class="py-12">
      <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
          Créer une formation
        </h2>
        </hr>
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
                maxlength="255"
                minlength="7"
                placeholder="Le nom de votre formation..."
                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                id="title"
                type="text"
                v-model="form.title"
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
                maxlength="255"
                minlength="40"
                class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                id="description"
                type="text"
                v-model="form.description"
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
              <div v-for="(episode, index) in form.episodes" v-bind:key="index">
                <div class="mb-4">
                  <label
                    class="block text-gray-700 text-sm font-bold mb-2"
                    :for="title - '+index'"
                  >
                    Titre de ce cours n°{{ index + 1 }}
                  </label>
                  <input
                    placeholder="Entrez l'intitulé de ce chapitre"
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    :id="title - '+index'"
                    type="text"
                    v-model="form.episodes[index].title"
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
                    v-model="form.episodes[index].description"
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
                    placeholder="Entrez l'URL embed du site où est hébérgé votre vidéo..."
                    class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
                    :id="video_url - '+index'"
                    type="text"
                    v-model="form.episodes[index].video_url"
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
              v-if="form.episodes.length < 100"
              @click.prevent="add"
            >
              +
            </button>
            <button
              class="bg-red-600 rounded py-2 px-4 my-2 text-white block"
              v-if="form.episodes.length > 1"
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
  data() {
    return {
      form: {
        title: null,
        description: null,
        episodes: [{ title: null, description: null, video_url: null }],
      },
    };
  },
  methods: {
    submit() {
      this.$inertia.post("/courses", this.form);
    },

    add() {
      this.form.episodes.push({
        title: null,
        description: null,
        video_url: null,
      });
    },

    remove() {
      this.form.episodes.pop();
    },
  },
};
</script>
