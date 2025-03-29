.class public Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/OozeTrap;
.super Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;
.source "OozeTrap.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;-><init>()V

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->color:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->shape:I

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 8

    .line 1
    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 2
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->solid:[Z

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    add-int v7, v6, v4

    aget-boolean v5, v5, v7

    if-nez v5, :cond_0

    add-int/2addr v6, v4

    const/4 v5, 0x5

    .line 3
    invoke-static {v6, v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(III)V

    .line 4
    iget v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/traps/Trap;->pos:I

    add-int/2addr v5, v4

    invoke-static {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    iget-boolean v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez v5, :cond_0

    .line 6
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    invoke-static {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    const/high16 v5, 0x41a00000    # 20.0f

    .line 7
    iput v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;->left:F

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
