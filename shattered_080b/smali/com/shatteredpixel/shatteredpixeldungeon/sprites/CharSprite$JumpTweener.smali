.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$JumpTweener;
.super Lcom/watabou/noosa/tweeners/Tweener;
.source "CharSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JumpTweener"
.end annotation


# instance fields
.field public end:Lcom/watabou/utils/PointF;

.field public height:F

.field public start:Lcom/watabou/utils/PointF;

.field public visual:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;Lcom/watabou/utils/PointF;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4}, Lcom/watabou/noosa/tweeners/Tweener;-><init>(Lcom/watabou/noosa/Gizmo;F)V

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$JumpTweener;->visual:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 3
    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->point()Lcom/watabou/utils/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$JumpTweener;->start:Lcom/watabou/utils/PointF;

    .line 4
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$JumpTweener;->end:Lcom/watabou/utils/PointF;

    .line 5
    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$JumpTweener;->height:F

    return-void
.end method


# virtual methods
.method public updateValues(F)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$JumpTweener;->height:F

    neg-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    mul-float v0, v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float v1, v1, v0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$JumpTweener;->visual:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$JumpTweener;->start:Lcom/watabou/utils/PointF;

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$JumpTweener;->end:Lcom/watabou/utils/PointF;

    invoke-static {v2, v3, p1}, Lcom/watabou/utils/PointF;->inter(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;F)Lcom/watabou/utils/PointF;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    invoke-virtual {v0, p1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite$JumpTweener;->visual:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v0, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowOffset:F

    return-void
.end method
