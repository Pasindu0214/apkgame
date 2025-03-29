.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;
.source "Enchanting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting$Phase;
    }
.end annotation


# instance fields
.field public color:I

.field public duration:F

.field public passed:F

.field public phase:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting$Phase;

.field public target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->originToCenter()V

    .line 3
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    move-result-object p1

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;->color:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->color:I

    .line 4
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting$Phase;->FADE_IN:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting$Phase;

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting$Phase;

    const p1, 0x3e4ccccd    # 0.2f

    .line 5
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->duration:F

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->passed:F

    return-void
.end method

.method public static show(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-boolean v0, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;

    invoke-direct {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 3
    iput-object p0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 4
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object p0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public update()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, 0x41000000    # 8.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, v0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v1, 0x41800000    # 16.0f

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting$Phase;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->passed:F

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->duration:F

    div-float/2addr v0, v5

    sub-float v0, v4, v0

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 6
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->passed:F

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->duration:F

    div-float/2addr v1, v5

    add-float/2addr v1, v4

    .line 7
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 8
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    goto :goto_0

    .line 9
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->color:I

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->passed:F

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->duration:F

    div-float/2addr v1, v5

    const v5, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/watabou/noosa/Visual;->tint(IF)V

    goto :goto_0

    .line 10
    :cond_2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->passed:F

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->duration:F

    div-float/2addr v0, v5

    mul-float v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 11
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->passed:F

    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->duration:F

    div-float/2addr v1, v5

    .line 12
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 13
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 14
    :goto_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->passed:F

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->passed:F

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->duration:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting$Phase;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->kill()V

    goto :goto_1

    .line 17
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting$Phase;->FADE_OUT:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting$Phase;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting$Phase;

    const v0, 0x3ecccccd    # 0.4f

    .line 18
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->duration:F

    goto :goto_1

    .line 19
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting$Phase;->STATIC:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting$Phase;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->phase:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting$Phase;

    .line 20
    iput v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->duration:F

    :goto_1
    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Enchanting;->passed:F

    :cond_6
    return-void
.end method
