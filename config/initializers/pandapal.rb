PandaPal.lti_options = {
  title: 'Dummy LTI',
  settings_structure: {
    canvas: {
      is_required: true,
      data_type: 'Hash',
      api_token: {
        is_required: true,
        data_type: 'String'
      },
      base_url: {
        is_required: true,
        data_type: 'String'
      },
    },
  }
}

PandaPal.lti_custom_params = {
  custom_canvas_role: '$Canvas.membership.roles',
  custom_canvas_user_id: '$Canvas.user.id',
  custom_canvas_account_id: '$Canvas.account.id',
  custom_course_id: '$Canvas.course.id',
}

PandaPal.lti_environments = {
  domain: ENV['PROD_DOMAIN'],
  beta_domain: ENV['BETA_DOMAIN'],
  test_domain: ENV['TEST_DOMAIN']
}

PandaPal.stage_navigation(
  :account_navigation,
  enabled: true,
  text: 'Dummy LTI',
  visibility: 'admins',
  display_type: 'full_width_in_context'
)