.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;
.super Lcom/watabou/noosa/ui/Component;
.source "Archs.java"


# static fields
.field public static offsB:F

.field public static offsF:F


# instance fields
.field public arcsBg:Lcom/watabou/noosa/SkinnedBlock;

.field public arcsFg:Lcom/watabou/noosa/SkinnedBlock;

.field public darkness:Lcom/watabou/noosa/Image;

.field public reversed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->reversed:Z

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs$1;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "arcs1.png"

    invoke-direct {v0, p0, v1, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;FFLjava/lang/Object;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->arcsBg:Lcom/watabou/noosa/SkinnedBlock;

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v0, Lcom/watabou/noosa/SkinnedBlock;->autoAdjust:Z

    .line 3
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->offsB:F

    const/4 v4, 0x0

    .line 4
    iput v4, v0, Lcom/watabou/noosa/SkinnedBlock;->offsetX:F

    .line 5
    iput v3, v0, Lcom/watabou/noosa/SkinnedBlock;->offsetY:F

    .line 6
    invoke-virtual {v0}, Lcom/watabou/noosa/SkinnedBlock;->updateFrame()V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->arcsBg:Lcom/watabou/noosa/SkinnedBlock;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs$2;

    const-string v3, "arcs2.png"

    invoke-direct {v0, p0, v1, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;FFLjava/lang/Object;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->arcsFg:Lcom/watabou/noosa/SkinnedBlock;

    .line 9
    iput-boolean v2, v0, Lcom/watabou/noosa/SkinnedBlock;->autoAdjust:Z

    .line 10
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->offsF:F

    .line 11
    iput v4, v0, Lcom/watabou/noosa/SkinnedBlock;->offsetX:F

    .line 12
    iput v1, v0, Lcom/watabou/noosa/SkinnedBlock;->offsetY:F

    .line 13
    invoke-virtual {v0}, Lcom/watabou/noosa/SkinnedBlock;->updateFrame()V

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->arcsFg:Lcom/watabou/noosa/SkinnedBlock;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 15
    new-instance v0, Lcom/watabou/noosa/Image;

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/watabou/gltextures/TextureCache;->createGradient([I)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v1

    .line 16
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    .line 17
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 18
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->darkness:Lcom/watabou/noosa/Image;

    const/high16 v1, 0x42b40000    # 90.0f

    .line 19
    iput v1, v0, Lcom/watabou/noosa/Visual;->angle:F

    .line 20
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void

    :array_0
    .array-data 4
        0x0
        0x22000000
        0x55000000
        -0x67000000
        -0x12000000
    .end array-data
.end method

.method public layout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->arcsBg:Lcom/watabou/noosa/SkinnedBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/SkinnedBlock;->size(FF)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->arcsBg:Lcom/watabou/noosa/SkinnedBlock;

    iget-object v1, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    iget v1, v1, Lcom/watabou/gltextures/SmartTexture;->width:I

    div-int/lit8 v2, v1, 0x4

    int-to-float v2, v2

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    int-to-float v1, v1

    rem-float/2addr v3, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/watabou/noosa/SkinnedBlock;->offset(FF)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->arcsFg:Lcom/watabou/noosa/SkinnedBlock;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v4, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0, v2, v4}, Lcom/watabou/noosa/SkinnedBlock;->size(FF)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->arcsFg:Lcom/watabou/noosa/SkinnedBlock;

    iget-object v2, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    iget v2, v2, Lcom/watabou/gltextures/SmartTexture;->width:I

    div-int/lit8 v4, v2, 0x4

    int-to-float v4, v4

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->width:F

    int-to-float v2, v2

    rem-float/2addr v5, v2

    div-float/2addr v5, v1

    sub-float/2addr v4, v5

    invoke-virtual {v0, v4, v3}, Lcom/watabou/noosa/SkinnedBlock;->offset(FF)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->darkness:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 6
    iget-object v0, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    iput v2, v0, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method

.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    sget v0, Lcom/watabou/noosa/Game;->elapsed:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float v0, v0, v1

    .line 3
    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->reversed:Z

    if-eqz v1, :cond_0

    neg-float v0, v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->arcsBg:Lcom/watabou/noosa/SkinnedBlock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/watabou/noosa/SkinnedBlock;->offset(FF)V

    .line 5
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->arcsFg:Lcom/watabou/noosa/SkinnedBlock;

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/watabou/noosa/SkinnedBlock;->offset(FF)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->arcsBg:Lcom/watabou/noosa/SkinnedBlock;

    .line 7
    iget v0, v0, Lcom/watabou/noosa/SkinnedBlock;->offsetY:F

    .line 8
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->offsB:F

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->arcsFg:Lcom/watabou/noosa/SkinnedBlock;

    .line 10
    iget v0, v0, Lcom/watabou/noosa/SkinnedBlock;->offsetY:F

    .line 11
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Archs;->offsF:F

    return-void
.end method
