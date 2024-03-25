# My App

A new Flutter project.

## Getting Started

### Run

1. `flutter clean`: This command cleans the build cache. It removes the build/ directory and all of its contents.

2. `flutter pub get`: This command gets the dependencies of the project. It ensures that all dependencies are downloaded and cached.

3. `flutter pub run build_runner build --delete-conflicting-outputs`: This command runs the build_runner can to generate code during the build process. It ensures that any conflicting output files are deleted before generating new ones.

4. `flutter pub run intl_utils:generate`: This command generates localization files using the intl_utils package.

### Run Before Commit

1. `flutter pub run import_sorter:main`: This command runs the import_sorter package to sort the imports in the project. It helps maintain a clean and organized codebase.