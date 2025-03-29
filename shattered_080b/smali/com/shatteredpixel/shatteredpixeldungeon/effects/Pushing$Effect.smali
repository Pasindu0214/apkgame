.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;
.super Lcom/watabou/noosa/Visual;
.source "Pushing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Effect"
.end annotation


# instance fields
.field public delay:F

.field public end:Lcom/watabou/utils/PointF;

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/watabou/noosa/Visual;-><init>(FFFF)V

    .line 3
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 4
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->from:I

    .line 5
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->worldToCamera(I)Lcom/watabou/utils/PointF;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 6
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 7
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->to:I

    .line 8
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->worldToCamera(I)Lcom/watabou/utils/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;->end:Lcom/watabou/utils/PointF;

    .line 9
    iget-object v2, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v3, v1, Lcom/watabou/utils/PointF;->x:F

    iget v4, p0, Lcom/watabou/noosa/Visual;->x:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    const v5, 0x3e19999a    # 0.15f

    div-float/2addr v3, v5

    iget v1, v1, Lcom/watabou/utils/PointF;->y:F

    iget v6, p0, Lcom/watabou/noosa/Visual;->y:F

    sub-float/2addr v1, v6

    mul-float v1, v1, v4

    div-float/2addr v1, v5

    .line 10
    iput v3, v2, Lcom/watabou/utils/PointF;->x:F

    .line 11
    iput v1, v2, Lcom/watabou/utils/PointF;->y:F

    .line 12
    iget-object v2, p0, Lcom/watabou/noosa/Visual;->acc:Lcom/watabou/utils/PointF;

    neg-float v3, v3

    div-float/2addr v3, v5

    neg-float v1, v1

    div-float/2addr v1, v5

    .line 13
    iput v3, v2, Lcom/watabou/utils/PointF;->x:F

    .line 14
    iput v1, v2, Lcom/watabou/utils/PointF;->y:F

    .line 15
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;->delay:F

    .line 16
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 17
    iget-object p1, p1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1, p0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    return-void
.end method


# virtual methods
.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;->delay:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;->delay:F

    const v1, 0x3e19999a    # 0.15f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    .line 4
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 5
    iget v1, p0, Lcom/watabou/noosa/Visual;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 6
    iget v1, p0, Lcom/watabou/noosa/Visual;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    .line 8
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 9
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;->end:Lcom/watabou/utils/PointF;

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 10
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    .line 13
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;->callback:Lcom/watabou/utils/Callback;

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0}, Lcom/watabou/utils/Callback;->call()V

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing$Effect;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    :goto_0
    return-void
.end method
