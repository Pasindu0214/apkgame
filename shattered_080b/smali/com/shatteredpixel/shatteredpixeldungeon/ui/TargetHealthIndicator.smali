.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;
.source "TargetHealthIndicator.java"


# static fields
.field public static instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;


# instance fields
.field public target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;-><init>()V

    .line 2
    sput-object p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->instance:Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;

    return-void
.end method


# virtual methods
.method public target(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    :goto_0
    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v1

    iput v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    .line 4
    iget v1, v0, Lcom/watabou/noosa/Visual;->x:F

    iput v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 5
    iget v0, v0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v1, 0x40400000    # 3.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/TargetHealthIndicator;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/HealthBar;->level(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    :goto_0
    return-void
.end method
