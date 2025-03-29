.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;
.source "DriedRose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GhostHero"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;
    }
.end annotation


# instance fields
.field public defendingPos:I

.field public movingToDefendPos:Z

.field public rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GhostSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    .line 4
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->intelligentAlly:Z

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/16 v0, -0x13

    .line 8
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->UNDEAD:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 10
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->defendingPos:I

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->movingToDefendPos:Z

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/ToxicGas;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRetribution;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfPsionicBlast;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;-><init>()V

    .line 20
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GhostSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    .line 22
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    .line 23
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->intelligentAlly:Z

    .line 24
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$Wandering;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$1;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 25
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    const/16 v0, -0x13

    .line 26
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->actPriority:I

    .line 27
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->UNDEAD:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->defendingPos:I

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->movingToDefendPos:Z

    .line 31
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/ToxicGas;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/CorrosiveGas;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfRetribution;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/exotic/ScrollOfPsionicBlast;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 38
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->updateRose()V

    .line 39
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    return-void
.end method

.method public static synthetic access$000(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->updateRose()V

    return-void
.end method

.method public static synthetic access$500(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->target:I

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->updateRose()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindofMisc;->isEquipped(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    :cond_0
    invoke-virtual {p0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->damage(ILjava/lang/Object;)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 5
    :cond_2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    const-string v0, "hero_killed_boss_"

    .line 7
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v3, v0}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "hero_killed_"

    .line 8
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v3, v0}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 9
    :goto_0
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "snd_ghost.mp3"

    .line 10
    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    .line 12
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->destroy()V

    return v1

    .line 13
    :cond_4
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->act()Z

    move-result v0

    return v0
.end method

.method public attackDelay()F
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->attackDelay()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v1

    mul-float v0, v0, v1

    :cond_0
    return v0
.end method

.method public attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p2

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p2

    .line 5
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_0

    .line 6
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    .line 7
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "kill"

    invoke-static {p1, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return p2
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 1

    .line 1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    add-int/lit8 p1, p1, 0x9

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 4
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->accuracyFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)F

    move-result v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    :cond_0
    return p1
.end method

.method public canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->canAttack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-eqz v0, :cond_0

    .line 3
    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->canReach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public chooseEnemy()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->chooseEnemy()Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->defendingPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    .line 4
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 5
    invoke-virtual {v2, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_0

    .line 3
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;

    invoke-virtual {v0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGlyph(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 6
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 7
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->level()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->drRoll(I)I

    move-result v0

    sub-int/2addr p1, v0

    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->damage(ILjava/lang/Object;)V

    .line 9
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->updateQuickslot()V

    return-void
.end method

.method public damageRoll()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;->damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 4
    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public defenseProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    return p2
.end method

.method public defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_0

    int-to-float p1, p1

    .line 4
    invoke-virtual {v0, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->evasionFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    :cond_0
    return p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->updateRose()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghost:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/4 v1, 0x0

    .line 5
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->partialCharge:F

    const/4 v1, -0x1

    .line 6
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->ghostID:I

    const-string v1, "SUMMON"

    .line 7
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->defaultAction:Ljava/lang/String;

    .line 8
    :cond_0
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    return-void
.end method

.method public die(Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/BossHealthBar;->isAssigned()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const-string v0, "defeated_by_boss_"

    .line 2
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v2, v0}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "defeated_by_enemy_"

    .line 3
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v2, v0}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 4
    :goto_0
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_ghost.mp3"

    .line 5
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 6
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->die(Ljava/lang/Object;)V

    return-void
.end method

.method public drRoll()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->DRMin()I

    move-result v0

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 4
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    .line 5
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->DRMax()I

    move-result v2

    invoke-static {v0, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/melee/MeleeWeapon;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;->defenseFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->updateRose()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->talkedTo:Z

    if-nez v2, :cond_0

    .line 4
    iput-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->talkedTo:Z

    .line 5
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$1;

    invoke-direct {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;)V

    invoke-static {p1}, Lcom/watabou/noosa/Game;->runOnRenderThread(Lcom/watabou/utils/Callback;)V

    return v1

    .line 6
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    return v1
.end method

.method public isImmune(Ljava/lang/Class;)Z
    .locals 2

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v0, :cond_0

    .line 3
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Brimstone;

    invoke-virtual {v0, v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->hasGlyph(Ljava/lang/Class;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isImmune(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "defend_pos"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->defendingPos:I

    :cond_0
    const-string v0, "moving_to_defend"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->movingToDefendPos:Z

    return-void
.end method

.method public sayAppeared()V
    .locals 5

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    add-int/lit8 v1, v0, -0x1

    div-int/lit8 v1, v1, 0x5

    .line 2
    rem-int/lit8 v0, v0, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    invoke-static {v3, v2}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    invoke-static {v3, v0}, Lcom/watabou/utils/Random;->IntRange(II)I

    move-result v0

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    const-string v1, "dialogue_halls_"

    .line 3
    invoke-static {v1, v0}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v1, "dialogue_city_"

    .line 4
    invoke-static {v1, v0}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v1, "dialogue_caves_"

    .line 5
    invoke-static {v1, v0}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "dialogue_prison_"

    .line 6
    invoke-static {v1, v0}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "dialogue_sewers_"

    .line 7
    invoke-static {v1, v0}, La/a/a/a/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 8
    :goto_1
    sget-object v0, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v0, v0, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 9
    instance-of v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    if-eqz v0, :cond_5

    .line 10
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_ghost.mp3"

    .line 11
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_5
    return-void
.end method

.method public sayBoss()V
    .locals 5

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->depth:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    const-string v0, "seen_yog_"

    .line 2
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v3, v0}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "seen_king_"

    .line 3
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v3, v0}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "seen_dm300_"

    .line 4
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v3, v0}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "seen_tengu_"

    .line 5
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v3, v0}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "seen_goo_"

    .line 6
    invoke-static {v0}, La/a/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, v3, v0}, La/a/a/a/a;->a(IILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 7
    :goto_0
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v1, 0x3f800000    # 1.0f

    const-string v2, "snd_ghost.mp3"

    .line 8
    invoke-virtual {v0, v2, v1, v1, v1}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method

.method public speed()F
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->speed()F

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->speedFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)F

    move-result v0

    :cond_0
    return v0
.end method

.method public stealth()F
    .locals 2

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;->armor:Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->stealthFactor(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;F)F

    move-result v0

    :cond_0
    return v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->storeInBundle(Lcom/watabou/utils/Bundle;)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->defendingPos:I

    const-string v1, "defend_pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->movingToDefendPos:Z

    const-string v1, "moving_to_defend"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public final updateRose()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->getItem(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    .line 3
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->defenseSkill:I

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose$GhostHero;->rose:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/DriedRose;

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x14

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    return-void
.end method
