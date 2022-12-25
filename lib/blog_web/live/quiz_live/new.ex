defmodule BlogWeb.QuizLive.New do
  use BlogWeb, :live_component

  def render(assigns) do
    ~H"""
    <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8 mt-10">
      <div class="mx-auto max-w-3xl">
        <.form
          for={:quiz}
          id="quiz_form"
          phx-submit="create-quiz"
          class="space-y-8 divide-y divide-gray-200"
        >
          <div class="space-y-8 divide-y divide-gray-200">
            <div>
              <div>
                <h3 class="text-3xl font-medium leading-6 text-gray-900">Create a new quiz</h3>
                <p class="mt-1 text-sm text-gray-500">
                  Create <i>on the fly</i> quizzes for in-lecture reinforced learning.
                </p>
              </div>

              <div class="mt-6 grid grid-cols-1 gap-y-6 gap-x-4 sm:grid-cols-4">
                <div class="sm:col-span-4">
                  <label for="title" class="block text-sm font-medium text-gray-700">
                    Quiz Title
                  </label>
                  <p class="mt-1 text-sm text-gray-500">
                    This will be the heading for your quiz
                  </p>

                  <div class="mt-1">
                    <input
                      type="text"
                      name="title"
                      id="title"
                      autocomplete="title"
                      value={assigns.quiz.title}
                      class="block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"
                    />
                  </div>
                </div>

                <div class="sm:col-span-4">
                  <label for="slug" class="block text-sm font-medium text-gray-700">
                    Student URL
                  </label>
                  <div class="mt-1 flex rounded-md shadow-sm">
                    <span class="inline-flex items-center rounded-l-md border border-r-0 border-gray-300 bg-gray-50 px-3 text-gray-500 sm:text-sm">
                      anunknown.dev/quiz/
                    </span>
                    <input
                      type="text"
                      name="slug"
                      id="slug"
                      autocomplete="slug"
                      value={assigns.quiz.slug}
                      class="block w-full min-w-0 flex-1 rounded-none rounded-r-md border-gray-300 focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"
                    />
                  </div>
                </div>

                <div class="sm:col-span-4">
                  <label for="passcode" class="block text-sm font-medium text-gray-700">
                    Admin URL
                  </label>
                  <div class="mt-1 flex rounded-md shadow-sm">
                    <input
                      type="text"
                      name="passcode"
                      id="passcode"
                      autocomplete="passcode"
                      readonly="true"
                      value={"anunknown.dev/quiz/a/#{assigns.quiz.identifier}"}
                      class="block w-full items-center rounded border border-gray-300 bg-gray-50 px-3 text-gray-500 sm:text-sm"
                    />
                  </div>
                </div>

                <div class="sm:col-span-4">
                  <label for="question_1" class="block text-sm font-medium text-gray-700">
                    Question 1:
                    <span class="mt-2 text-sm text-gray-500">Write your question below.</span>
                  </label>

                  <div class="mt-1">
                    <textarea
                      id="question_1"
                      name="question_1"
                      rows="3"
                      class="block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"
                    />
                  </div>
                </div>

                <div class="sm:col-span-4">
                  <label for="answer_1" class="block text-sm font-medium text-gray-700">
                    Answer 1: <span class="mt-2 text-sm text-gray-500">Write your answer below.</span>
                  </label>

                  <div class="mt-1">
                    <textarea
                      id="question_1"
                      name="question_1"
                      rows="1"
                      class="block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"
                    />
                  </div>
                </div>

                <div class="sm:col-span-1">
                  <button
                    type="button"
                    phx_disable_with="... adding question"
                    class="block w-full rounded-md bg-blue-200 border border-gray-300 bg-white py-2 px-3 text-sm font-medium text-gray-700 shadow-sm hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
                  >
                    Add Question
                  </button>
                </div>
              </div>
            </div>
          </div>

          <div class="pt-5">
            <div class="flex justify-end">
              <button
                type="submit"
                class="ml-3 px-10 inline-flex justify-center rounded-md border border-transparent bg-indigo-700 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-500 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
              >
                Create Quiz
              </button>
            </div>
          </div>
        </.form>
      </div>
    </div>
    """
  end
end
