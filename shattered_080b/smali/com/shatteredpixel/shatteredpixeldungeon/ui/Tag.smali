.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;
.super Lcom/watabou/noosa/ui/Button;
.source "Tag.java"


# instance fields
.field public b:F

.field public bg:Lcom/watabou/noosa/NinePatch;

.field public g:F

.field public lightness:F

.field public r:F


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->lightness:F

    shr-int/lit8 v0, p1, 0x10

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->r:F

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->g:F

    and-int/lit16 p1, p1, 0xff

    int-to-float p1, p1

    div-float/2addr p1, v1

    .line 5
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->b:F

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;->TAG:Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;

    invoke-static {v0}, La/b/a/e;->get(Lcom/shatteredpixel/shatteredpixeldungeon/Chrome$Type;)Lcom/watabou/noosa/NinePatch;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->bg:Lcom/watabou/noosa/NinePatch;

    .line 3
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->r:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->g:F

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->b:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->bg:Lcom/watabou/noosa/NinePatch;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public flip(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->bg:Lcom/watabou/noosa/NinePatch;

    .line 2
    iput-boolean p1, v0, Lcom/watabou/noosa/NinePatch;->flipHorizontal:Z

    .line 3
    invoke-virtual {v0}, Lcom/watabou/noosa/NinePatch;->updateVertices()V

    return-void
.end method

.method public layout()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->bg:Lcom/watabou/noosa/NinePatch;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/NinePatch;->size(FF)V

    return-void
.end method

.method public update()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->update()V

    .line 2
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->lightness:F

    float-to-double v1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    .line 3
    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->lightness:F

    float-to-double v1, v0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_0

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->bg:Lcom/watabou/noosa/NinePatch;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, v0, v2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iput v3, v1, Lcom/watabou/noosa/Visual;->ba:F

    iput v3, v1, Lcom/watabou/noosa/Visual;->ga:F

    iput v3, v1, Lcom/watabou/noosa/Visual;->ra:F

    .line 5
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->r:F

    mul-float v3, v3, v2

    sub-float v5, v4, v0

    mul-float v5, v5, v3

    iput v5, v1, Lcom/watabou/noosa/Visual;->rm:F

    .line 6
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->g:F

    mul-float v3, v3, v2

    sub-float v5, v4, v0

    mul-float v5, v5, v3

    iput v5, v1, Lcom/watabou/noosa/Visual;->gm:F

    .line 7
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->b:F

    mul-float v3, v3, v2

    sub-float/2addr v4, v0

    mul-float v4, v4, v3

    iput v4, v1, Lcom/watabou/noosa/Visual;->bm:F

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->bg:Lcom/watabou/noosa/NinePatch;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->r:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->g:F

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Tag;->b:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    :cond_1
    :goto_0
    return-void
.end method
