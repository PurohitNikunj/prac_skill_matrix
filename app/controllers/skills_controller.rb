class SkillsController < ApplicationController
  def add_skill
    @user_skill = current_user.user_skills.new()
    @team_manager = current_user.team_manager
  end

  def post_add_skill
    binding.pry
    # ( --- after skill.save ---- )
    # UserMailer.with(necessary params).skill_added.deliver_later
  end

  def edit_primaryskill_secondarystack
    @skill_target = params["skill_target"]
    @stack_target = params["stack_target"]
    @ssc = params["ssc"]
    @skill_set = Skill.where(tech_stack_id: params["stackId"])
    @stack_set = TechStack.where.not(id: params["stackId"])
    respond_to do |format|
      format.turbo_stream
    end
  end

  def edit_secondaryskill
    @secondary_skill_target = params["secondary_skill_target"]
    @secondary_skill_set = Skill.where(tech_stack_id: params["stackId"])
    respond_to do |format|
      format.turbo_stream
    end
  end
end

# a181848fede7c0981808d55f692825dfbff74675f8
# 688906000043698833