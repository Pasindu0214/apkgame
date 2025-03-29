.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;
.source "CharHealthIndicator.java"


# instance fields
.field public target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 3
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->healthIndicators:Lcom/watabou/noosa/Group;

    invoke-virtual {p1, p0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_0
    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->createChildren()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/watabou/noosa/ui/Component;->height:F

    return-void
.end method

.method public update()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v2, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    const v3, 0x3f2aaaab

    mul-float v2, v2, v3

    iput v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 4
    iget v2, v0, Lcom/watabou/noosa/Visual;->x:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    const/high16 v4, 0x40c00000    # 6.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    iput v3, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 5
    iget v0, v0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v2, 0x40000000    # 2.0f

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->level(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/CharHealthIndicator;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    goto :goto_0

    .line 8
    :cond_2
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    :goto_0
    return-void
.end method
