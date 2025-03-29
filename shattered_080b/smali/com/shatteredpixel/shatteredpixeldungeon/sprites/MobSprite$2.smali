.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite$2;
.super Lcom/watabou/noosa/tweeners/ScaleTweener;
.source "MobSprite.java"


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;Lcom/watabou/noosa/Visual;Lcom/watabou/utils/PointF;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;

    invoke-direct {p0, p2, p3, p4}, Lcom/watabou/noosa/tweeners/ScaleTweener;-><init>(Lcom/watabou/noosa/Visual;Lcom/watabou/utils/PointF;F)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Group;->erase(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public updateValues(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/tweeners/ScaleTweener;->visual:Lcom/watabou/noosa/Visual;

    iget-object v1, p0, Lcom/watabou/noosa/tweeners/ScaleTweener;->start:Lcom/watabou/utils/PointF;

    iget-object v2, p0, Lcom/watabou/noosa/tweeners/ScaleTweener;->end:Lcom/watabou/utils/PointF;

    invoke-static {v1, v2, p1}, Lcom/watabou/utils/PointF;->inter(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;F)Lcom/watabou/utils/PointF;

    move-result-object v1

    iput-object v1, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;

    iget v1, v0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v2, 0x41400000    # 12.0f

    sget v3, Lcom/watabou/noosa/Game;->elapsed:F

    mul-float v3, v3, v2

    add-float/2addr v3, v1

    iput v3, v0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 3
    iput v1, v0, Lcom/watabou/noosa/Visual;->am:F

    return-void
.end method
