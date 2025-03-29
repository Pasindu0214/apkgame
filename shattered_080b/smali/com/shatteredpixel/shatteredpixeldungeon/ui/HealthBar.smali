.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;
.super Lcom/watabou/noosa/ui/Component;
.source "HealthBar.java"


# instance fields
.field public Bg:Lcom/watabou/noosa/ColorBlock;

.field public Hp:Lcom/watabou/noosa/ColorBlock;

.field public Shld:Lcom/watabou/noosa/ColorBlock;

.field public health:F

.field public shield:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 3

    .line 1
    new-instance v0, Lcom/watabou/noosa/ColorBlock;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x340000

    invoke-direct {v0, v1, v1, v2}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->Bg:Lcom/watabou/noosa/ColorBlock;

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 3
    new-instance v0, Lcom/watabou/noosa/ColorBlock;

    const v2, -0x441145

    invoke-direct {v0, v1, v1, v2}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->Shld:Lcom/watabou/noosa/ColorBlock;

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    new-instance v0, Lcom/watabou/noosa/ColorBlock;

    const v2, -0xff1200

    invoke-direct {v0, v1, v1, v2}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->Hp:Lcom/watabou/noosa/ColorBlock;

    .line 6
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v0, 0x40000000    # 2.0f

    .line 7
    iput v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    return-void
.end method

.method public layout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->Bg:Lcom/watabou/noosa/ColorBlock;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->Shld:Lcom/watabou/noosa/ColorBlock;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->Hp:Lcom/watabou/noosa/ColorBlock;

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v3, v2, Lcom/watabou/noosa/Visual;->x:F

    iput v3, v1, Lcom/watabou/noosa/Visual;->x:F

    iput v3, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v3, v2, Lcom/watabou/noosa/Visual;->y:F

    iput v3, v1, Lcom/watabou/noosa/Visual;->y:F

    iput v3, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ColorBlock;->size(FF)V

    .line 4
    iget v0, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 5
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v1

    iget v1, v1, Lcom/watabou/noosa/Camera;->zoom:F

    mul-float v0, v0, v1

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->Shld:Lcom/watabou/noosa/ColorBlock;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->shield:F

    mul-float v3, v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v2, v2, v3

    div-float/2addr v2, v0

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v1, v2, v3}, Lcom/watabou/noosa/ColorBlock;->size(FF)V

    .line 7
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->Hp:Lcom/watabou/noosa/ColorBlock;

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->health:F

    mul-float v3, v3, v0

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v2, v2, v3

    div-float/2addr v2, v0

    iget v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v1, v2, v0}, Lcom/watabou/noosa/ColorBlock;->size(FF)V

    return-void
.end method

.method public level(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 2

    .line 1
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    int-to-float v0, v0

    .line 2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v0

    .line 3
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    int-to-float p1, p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    div-float/2addr v0, p1

    div-float/2addr v1, p1

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->health:F

    .line 5
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->shield:F

    .line 6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->layout()V

    return-void
.end method
