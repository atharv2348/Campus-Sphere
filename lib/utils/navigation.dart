import 'package:go_router/go_router.dart';
import 'package:smart_campus/data/documents_data.dart';
import 'package:smart_campus/models/club_model.dart';
import 'package:smart_campus/models/document_list_model.dart';
import 'package:smart_campus/pages/clubs/club_details_page.dart';
import 'package:smart_campus/pages/clubs/club_landing_page.dart';
import 'package:smart_campus/pages/home_page.dart';
import 'package:smart_campus/pages/important/admission_page.dart';
import 'package:smart_campus/pages/important/document_list_page.dart';
import 'package:smart_campus/pages/important/documents_page.dart';
import 'package:smart_campus/pages/important/scholarship_page.dart';
import 'package:smart_campus/pages/main_pages/about_gcek_page.dart';
import 'package:smart_campus/pages/main_pages/branches_page.dart';
import 'package:smart_campus/pages/main_pages/facilities_page.dart';
import 'package:smart_campus/pages/main_pages/pdf_view.dart';
import 'package:smart_campus/pages/main_pages/placement_page.dart';
import 'package:smart_campus/pages/settings_page.dart';
import 'package:smart_campus/pages/temp.dart';

class Navigation {
  static const rootRoute = "/";
  static const settingsRoute = "/settings";
  static const admissionRoute = '/admission';
  static const documentsRoute = '/documents';
  static const documentListRoute = '/documents/list';
  static const scholarshipRoute = '/scholarship';
  static const aboutGCEKRoute = '/aboutGCEK';
  static const branchRoute = '/branch';
  static const facilitiesRoute = '/facilities';
  static const pdfViewRoute = '/pdfView';
  static const placementRecordRoute = '/placement_pdf';
  static const clubLandingRoute = '/clubs';
  static const clubDetailsPageRoute = '/clubs/details';

  static final GoRouter router = GoRouter(
    initialLocation: rootRoute,
    routes: [
      GoRoute(
        path: rootRoute,
        builder: (context, state) {
          return HomePage();
        },
      ),
      GoRoute(
        path: settingsRoute,
        builder: (context, state) {
          return SettingsPage();
        },
      ),
      GoRoute(
        path: admissionRoute,
        builder: (context, state) {
          return AdmissionPage();
        },
      ),
      GoRoute(
        path: documentsRoute,
        builder: (context, state) {
          return DocumentsPage();
        },
      ),
      GoRoute(
        path: documentListRoute,
        builder: (context, state) {
          final categoryName = state.extra as String;
          return DocumentListPage(categoryName: categoryName);
        },
      ),
      GoRoute(
        path: scholarshipRoute,
        builder: (context, state) {
          return ScholarshipPage();
        },
      ),
      GoRoute(
        path: aboutGCEKRoute,
        builder: (context, state) {
          return AboutGcekPage();
        },
      ),
      GoRoute(
        path: branchRoute,
        builder: (context, state) {
          return BranchesPage();
        },
      ),
      GoRoute(
        path: facilitiesRoute,
        builder: (context, state) {
          return FacilitiesPage();
        },
      ),
      GoRoute(
        path: pdfViewRoute,
        builder: (context, state) {
          final year = state.extra as String;
          return PdfView(year);
        },
      ),
      GoRoute(
        path: placementRecordRoute,
        builder: (context, state) {
          return PlacementPage();
        },
      ),
      GoRoute(
        path: clubLandingRoute,
        builder: (context, state) {
          return ClubLandingPage();
        },
      ),
      GoRoute(
        path: clubDetailsPageRoute,
        builder: (context, state) {
          final ClubModel clubModel = state.extra as ClubModel;
          return ClubDetailsPage(
            clubModel: clubModel,
          );
        },
      ),
    ],
  );
}
