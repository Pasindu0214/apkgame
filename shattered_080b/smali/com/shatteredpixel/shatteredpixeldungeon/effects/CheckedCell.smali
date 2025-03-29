.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/CheckedCell;
.super Lcom/watabou/noosa/Image;
.source "CheckedCell.java"


# instance fields
.field public alpha:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const v0, -0xaa5501

    .line 1
    invoke-static {v0}, Lcom/watabou/gltextures/TextureCache;->createSolid(I)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 7
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p1, v0, v0}, Lcom/watabou/utils/PointF;->offset(FF)Lcom/watabou/utils/PointF;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    const p1, 0x3f4ccccd    # 0.8f

    .line 8
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CheckedCell;->alpha:F

    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CheckedCell;->alpha:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CheckedCell;->alpha:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x41800000    # 16.0f

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/CheckedCell;->alpha:F

    mul-float v2, v2, v1

    .line 4
    iput v2, v0, Lcom/watabou/utils/PointF;->x:F

    .line 5
    iput v2, v0, Lcom/watabou/utils/PointF;->y:F

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :goto_0
    return-void
.end method
