import 'dart:io';

import 'package:meta/meta.dart';

import 'reporter.dart';

// Code Climate Engine Specification https://github.com/codeclimate/platform/blob/master/spec/analyzers/SPEC.md

/// Creates reports in Code Climate format widely understood by various CI and analysis tools
abstract class CodeClimateReporter extends Reporter {
  @protected
  final IOSink output;

  /// If true will report in GitLab Code Quality format
  @protected
  final bool gitlabCompatible;

  const CodeClimateReporter(
    this.output, {
    this.gitlabCompatible = false,
  });
}
