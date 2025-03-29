.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Wound;
.super Lcom/watabou/noosa/Image;
.source "Wound.java"


# instance fields
.field public time:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;->WOUND:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Effects$Type;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, v1}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/watabou/noosa/Visual;->height:F

    div-float/2addr v3, v2

    .line 6
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput v3, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method

.method public static hit(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v0, v0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_0

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Wound;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Wound;

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v1, v0}, Lcom/watabou/noosa/Group;->bringToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 5
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 6
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->center(Lcom/watabou/noosa/Visual;)Lcom/watabou/utils/PointF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    const p0, 0x3f4ccccd    # 0.8f

    .line 7
    iput p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Wound;->time:F

    const/4 p0, 0x0

    .line 8
    iput p0, v0, Lcom/watabou/noosa/Visual;->angle:F

    :cond_0
    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Wound;->time:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Wound;->time:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->kill()V

    goto :goto_0

    :cond_0
    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 5
    iget-object v1, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v0, v2

    iput v0, v1, Lcom/watabou/utils/PointF;->x:F

    :goto_0
    return-void
.end method
