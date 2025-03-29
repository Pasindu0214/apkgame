.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrippingTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.source "GrippingTrap.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;-><init>()V

    const/4 v0, 0x7

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->shape:I

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->drRoll()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bleeding;

    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bleeding;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bleeding;->set(F)V

    .line 5
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Cripple;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 6
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Wound;->hit(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    goto :goto_0

    .line 7
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v1, v1, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    .line 9
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Wound;

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->recycle(Ljava/lang/Class;)Lcom/watabou/noosa/Gizmo;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Wound;

    .line 10
    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->bringToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 11
    invoke-virtual {v2}, Lcom/watabou/noosa/Gizmo;->revive()V

    .line 12
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 13
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->width:I

    .line 14
    rem-int v3, v0, v1

    mul-int/lit8 v3, v3, 0x10

    int-to-float v3, v3

    iget v4, v2, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v5, 0x41800000    # 16.0f

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v4, v6, v3}, La/a/a/a/a;->a(FFFF)F

    move-result v3

    iput v3, v2, Lcom/watabou/noosa/Visual;->x:F

    .line 15
    div-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iget v1, v2, Lcom/watabou/noosa/Visual;->height:F

    invoke-static {v5, v1, v6, v0}, La/a/a/a/a;->a(FFFF)F

    move-result v0

    iput v0, v2, Lcom/watabou/noosa/Visual;->y:F

    const v0, 0x3f4ccccd    # 0.8f

    .line 16
    iput v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Wound;->time:F

    const/4 v0, 0x0

    .line 17
    iput v0, v2, Lcom/watabou/noosa/Visual;->angle:F

    :goto_0
    return-void
.end method

.method public trigger()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_trap.mp3"

    .line 3
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->reveal()Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    const/16 v1, 0x12

    .line 6
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/GrippingTrap;->activate()V

    return-void
.end method
