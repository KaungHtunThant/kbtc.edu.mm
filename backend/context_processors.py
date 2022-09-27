from backend.models import Academic, Levels, Course, SchoolInfo


def custom_context(request):
    degrees = Academic.objects.all()
    schools = SchoolInfo.objects.all()
    deg_lvl = {}
    for d in degrees:
        relations = d.academic_course.all()
        lvls = set()
        for r in relations:
            course = Course.objects.get(id = r.courseName_id)
            lvls.add(course.level)
        lvls = sorted(list(lvls), key=lambda x: x.levelName)
        deg_lvl[d] = lvls
    return {
        "degrees": degrees,
        "schools": schools,
        "levels": Levels.objects.all(),
        "deg_lvl": deg_lvl
    }
