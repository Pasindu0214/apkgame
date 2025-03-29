.class public Lcom/shatteredpixel/shatteredpixeldungeon/plants/Blindweed;
.super Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;
.source "Blindweed.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/plants/Blindweed$Seed;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;-><init>()V

    const/16 v0, 0xb

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->image:I

    return-void
.end method


# virtual methods
.method public activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->WARDEN:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v0, v1, :cond_0

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Invisibility;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    const/16 v1, 0xa

    .line 3
    invoke-static {v0, v1}, Lcom/watabou/utils/Random;->Int(II)I

    move-result v0

    .line 4
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Blindness;

    int-to-float v0, v0

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 5
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Cripple;

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 6
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v0, :cond_2

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 8
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomDestination(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->beckon(I)V

    .line 9
    :cond_2
    :goto_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_3

    .line 10
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v0, v2, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    :cond_3
    return-void
.end method
