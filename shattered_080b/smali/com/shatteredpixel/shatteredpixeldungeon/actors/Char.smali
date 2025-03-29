.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;
.source "Char.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;,
        Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;
    }
.end annotation


# static fields
.field public static INFINITE_EVASION:I = 0xf4240


# instance fields
.field public HP:I

.field public HT:I

.field public alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

.field public baseSpeed:F

.field public buffs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;",
            ">;"
        }
    .end annotation
.end field

.field public cachedShield:I

.field public fieldOfView:[Z

.field public flying:Z

.field public final immunities:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public invisible:I

.field public needsShieldUpdate:Z

.field public paralysed:I

.field public path:Lcom/watabou/utils/PathFinder$Path;

.field public pos:I

.field public properties:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;",
            ">;"
        }
    .end annotation
.end field

.field public final resistances:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field public rooted:Z

.field public sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

.field public viewDistance:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->baseSpeed:F

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->paralysed:I

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->rooted:Z

    .line 6
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->invisible:I

    const/16 v1, 0x8

    .line 8
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->viewDistance:I

    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    .line 10
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs:Ljava/util/HashSet;

    .line 11
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->cachedShield:I

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->needsShieldUpdate:Z

    .line 13
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->resistances:Ljava/util/HashSet;

    .line 14
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    return-void
.end method

.method public static hasProp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1
    iget-object p0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hit(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Z)Z
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hex;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Bless;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v2

    int-to-float v2, v2

    .line 2
    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v3

    int-to-float v3, v3

    const v4, 0xf4240

    int-to-float v4, v4

    const/4 v5, 0x0

    cmpl-float v6, v3, v4

    if-ltz v6, :cond_0

    return v5

    :cond_0
    const/4 v6, 0x1

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    return v6

    .line 3
    :cond_1
    invoke-static {v2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v2

    .line 4
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v4

    const/high16 v7, 0x3fa00000    # 1.25f

    if-eqz v4, :cond_2

    mul-float v2, v2, v7

    .line 5
    :cond_2
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p0

    const v4, 0x3f4ccccd    # 0.8f

    if-eqz p0, :cond_3

    mul-float v2, v2, v4

    .line 6
    :cond_3
    invoke-static {v3}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p0

    .line 7
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_4

    mul-float p0, p0, v7

    .line 8
    :cond_4
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    if-eqz p1, :cond_5

    mul-float p0, p0, v4

    :cond_5
    if-eqz p2, :cond_6

    const/high16 p1, 0x40000000    # 2.0f

    mul-float v2, v2, p1

    :cond_6
    cmpl-float p0, v2, p0

    if-ltz p0, :cond_7

    const/4 v5, 0x1

    :cond_7
    return v5
.end method


# virtual methods
.method public act()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    if-eqz v0, :cond_0

    array-length v0, v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 2
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    if-eq v0, v1, :cond_1

    .line 3
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 4
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->length:I

    .line 5
    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    .line 6
    :cond_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->fieldOfView:[Z

    invoke-virtual {v0, p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->updateFieldOfView(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;[Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->announced:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->type:Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff$buffType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v2, 0xffff00

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/high16 v2, 0xff0000

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v2, 0xff00

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public attack(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 12

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FrostImbue;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/EarthImbue;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FireImbue;

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return v4

    .line 2
    :cond_0
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v6, v5, v6

    const/4 v7, 0x1

    if-nez v6, :cond_2

    iget v6, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    .line 3
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isInvulnerable(Ljava/lang/Class;)Z

    move-result v6

    const-string v8, "snd_miss.mp3"

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v6, :cond_4

    if-eqz v5, :cond_3

    .line 4
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v0, 0xff00

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "invulnerable"

    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 5
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 6
    invoke-virtual {p1, v8, v9, v9, v9}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_3
    return v4

    .line 7
    :cond_4
    invoke-static {p0, p1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->hit(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Z)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 8
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->drRoll()I

    move-result v6

    .line 9
    instance-of v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v8, :cond_5

    .line 10
    move-object v8, p0

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 11
    iget-object v10, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->weapon:Lcom/shatteredpixel/shatteredpixeldungeon/items/KindOfWeapon;

    instance-of v10, v10, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;

    if-eqz v10, :cond_5

    iget-object v10, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->SNIPER:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-ne v10, v11, :cond_5

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v11, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 12
    invoke-virtual {v10, v8, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result v8

    if-nez v8, :cond_5

    const/4 v6, 0x0

    .line 13
    :cond_5
    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;

    invoke-virtual {p0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;

    if-eqz v8, :cond_7

    .line 14
    iget v8, v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation;->turnsInvis:I

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->getLvl(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;

    move-result-object v8

    .line 15
    invoke-virtual {v8, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->canInstakill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 16
    invoke-virtual {v8, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v8

    .line 17
    iget v10, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p1, v10, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 18
    iget v10, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_2

    .line 19
    :cond_6
    invoke-virtual {v8, p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Preparation$AttackLevel;->damageRoll(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v8

    goto :goto_2

    .line 20
    :cond_7
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damageRoll()I

    move-result v8

    .line 21
    :goto_2
    invoke-virtual {p1, p0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->defenseProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result v8

    sub-int/2addr v8, v6

    .line 22
    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 23
    const-class v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vulnerable;

    invoke-virtual {p1, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v8

    if-eqz v8, :cond_8

    int-to-float v6, v6

    const v8, 0x3faa3d71    # 1.33f

    mul-float v6, v6, v8

    float-to-int v6, v6

    .line 24
    :cond_8
    invoke-virtual {p0, p1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result v6

    if-eqz v5, :cond_9

    .line 25
    sget-object v8, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const v10, 0x3f4ccccd    # 0.8f

    const/high16 v11, 0x3fa00000    # 1.25f

    invoke-static {v10, v11}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v10

    const-string v11, "snd_hit.mp3"

    invoke-virtual {v8, v11, v9, v9, v10}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 26
    :cond_9
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v8

    if-nez v8, :cond_a

    return v7

    .line 27
    :cond_a
    invoke-virtual {p1, v6, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 28
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v8

    if-eqz v8, :cond_b

    .line 29
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FireImbue;

    invoke-virtual {v3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FireImbue;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 30
    :cond_b
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 31
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/EarthImbue;

    invoke-virtual {v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/EarthImbue;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 32
    :cond_c
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 33
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FrostImbue;

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FrostImbue;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 34
    :cond_d
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->bloodBurstA(Lcom/watabou/utils/PointF;I)V

    .line 35
    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flash()V

    .line 36
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v1

    if-nez v1, :cond_10

    if-eqz v5, :cond_10

    .line 37
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v1, :cond_f

    if-ne p0, v1, :cond_e

    return v7

    .line 38
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->fail(Ljava/lang/Class;)V

    new-array p1, v7, [Ljava/lang/Object;

    .line 39
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    const-string v1, "kill"

    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_f
    if-ne p0, v1, :cond_10

    new-array v1, v7, [Ljava/lang/Object;

    .line 40
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "defeat"

    invoke-static {v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    :goto_3
    return v7

    :cond_11
    if-eqz v5, :cond_12

    .line 41
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->defenseVerb()Ljava/lang/String;

    move-result-object v0

    .line 42
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v1, 0xffff00

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 43
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    .line 44
    invoke-virtual {p1, v8, v9, v9, v9}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    :cond_12
    return v4
.end method

.method public attackProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 0

    .line 1
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Weakness;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object p1

    if-eqz p1, :cond_0

    int-to-float p1, p2

    const p2, 0x3f2b851f    # 0.67f

    mul-float p1, p1, p2

    float-to-int p2, p1

    :cond_0
    return p2
.end method

.method public attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public declared-synchronized buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, p1, :cond_0

    .line 3
    monitor-exit p0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    .line 4
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public declared-synchronized buffs()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized buffs(Ljava/lang/Class;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public canInteract(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->adjacent(II)Z

    move-result p1

    return p1
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 12

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ArcaneArmor;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Doom;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/MagicalSleep;

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Frost;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;

    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_17

    if-gez p1, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isInvulnerable(Ljava/lang/Class;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const p2, 0xff00

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "invulnerable"

    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_1
    instance-of v6, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;

    if-nez v6, :cond_5

    invoke-virtual {p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 5
    invoke-virtual {p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v5

    new-array v6, v7, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;

    .line 6
    invoke-virtual {v5, v6}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;

    array-length v8, v6

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_3

    aget-object v10, v6, v9

    .line 7
    iget v11, v10, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;->object:I

    invoke-static {v11}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findById(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    move-result-object v11

    if-nez v11, :cond_2

    .line 8
    invoke-virtual {v5, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {v10}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;->detach()V

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    int-to-float p1, p1

    .line 10
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    div-float/2addr p1, v6

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int p1, v8

    .line 11
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;

    .line 12
    iget v8, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;->object:I

    invoke-static {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findById(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;

    move-result-object v8

    check-cast v8, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 13
    invoke-virtual {v8, p1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->damage(ILjava/lang/Object;)V

    .line 14
    invoke-virtual {v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result v8

    if-nez v8, :cond_4

    .line 15
    invoke-virtual {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/LifeLink;->detach()V

    goto :goto_1

    .line 16
    :cond_5
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;

    invoke-virtual {p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;

    const/4 v6, 0x0

    const/high16 v8, -0x3f600000    # -5.0f

    if-eqz v5, :cond_6

    .line 17
    invoke-virtual {v5, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    .line 18
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v9

    cmpg-float v9, v9, v6

    if-gtz v9, :cond_6

    .line 19
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 20
    :cond_6
    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    invoke-virtual {p0, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v5

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    if-eqz v5, :cond_7

    .line 21
    invoke-virtual {v5, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    .line 22
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v8

    cmpg-float v6, v8, v6

    if-gtz v6, :cond_7

    .line 23
    invoke-virtual {v5}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V

    .line 24
    :cond_7
    invoke-virtual {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 25
    invoke-static {p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 26
    :cond_8
    invoke-virtual {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 27
    invoke-static {p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)V

    .line 28
    :cond_9
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isImmune(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_a

    mul-int/lit8 p1, p1, 0x2

    .line 29
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 30
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isImmune(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 p1, 0x0

    goto :goto_2

    :cond_b
    int-to-float p1, p1

    .line 31
    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->resist(Ljava/lang/Class;)F

    move-result v2

    mul-float v2, v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 32
    :goto_2
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/AntiMagic;->RESISTS:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 33
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ArcaneArmor;

    .line 34
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ArcaneArmor;->level:I

    .line 35
    invoke-static {v7, v0}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v0

    sub-int/2addr p1, v0

    if-gez p1, :cond_c

    const/4 p1, 0x0

    .line 36
    :cond_c
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 37
    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    .line 38
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis$ParalysisResist;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-nez v2, :cond_d

    goto :goto_3

    .line 39
    :cond_d
    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis$ParalysisResist;

    if-nez v2, :cond_e

    .line 40
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis$ParalysisResist;

    .line 41
    :cond_e
    iget v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis$ParalysisResist;->damage:I

    add-int/2addr v1, p1

    .line 42
    iput v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis$ParalysisResist;->damage:I

    .line 43
    invoke-static {v7, v1}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v1

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    invoke-static {v7, v2}, Lcom/watabou/utils/Random;->NormalIntRange(II)I

    move-result v2

    if-lt v1, v2, :cond_10

    .line 44
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->target:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_f

    .line 45
    iget-object v1, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v2, 0xffff00

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "out"

    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :cond_f
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;->detach()V

    .line 47
    :cond_10
    :goto_3
    instance-of v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Hunger;

    if-nez v0, :cond_12

    .line 48
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p1

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;

    .line 49
    invoke-virtual {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->absorbDamage(I)I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_4

    :cond_12
    move v1, p1

    :cond_13
    :goto_4
    sub-int/2addr p1, v1

    .line 50
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 51
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    if-eqz v2, :cond_15

    .line 52
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    div-int/lit8 v3, v3, 0x2

    if-le v0, v3, :cond_14

    const v0, 0xff8800

    goto :goto_5

    :cond_14
    const/high16 v0, 0xff0000

    :goto_5
    add-int/2addr v1, p1

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v7, [Ljava/lang/Object;

    .line 54
    invoke-virtual {v2, v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :cond_15
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    if-gez p1, :cond_16

    iput v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 56
    :cond_16
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->isAlive()Z

    move-result p1

    if-nez p1, :cond_17

    .line 57
    invoke-virtual {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->die(Ljava/lang/Object;)V

    :cond_17
    :goto_6
    return-void
.end method

.method public damageRoll()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public defenseProc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 0

    return p2
.end method

.method public defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public defenseVerb()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "def_verb"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 2
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V

    return-void
.end method

.method public die(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->destroy()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    :cond_0
    return-void
.end method

.method public distance(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result p1

    return p1
.end method

.method public drRoll()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 3

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vertigo;

    iget-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->rooted:Z

    const/4 v2, 0x1

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->rooted:Z

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->flying:Z

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    iget v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    :cond_2
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 4
    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean p1, p1, v0

    if-nez p1, :cond_4

    :cond_3
    return v2

    .line 5
    :cond_4
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->moveSprite(II)Z

    .line 7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->move(I)V

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->move(II)V

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->move(I)V

    .line 10
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->speed()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 11
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    :cond_5
    :goto_0
    return v2
.end method

.method public isAlive()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isCharmedBy(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    .line 3
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;

    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Charm;->object:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    .line 4
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 5
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public isImmune(Ljava/lang/Class;)Z
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->immunities:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    if-eqz v2, :cond_0

    .line 3
    new-instance v3, Ljava/util/HashSet;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->immunities:Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_0
    throw v3

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    if-eqz v2, :cond_2

    .line 7
    new-instance v4, Ljava/util/HashSet;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->immunities:Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 9
    :cond_2
    throw v3

    .line 10
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p1, 0x1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public isInvulnerable(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public move(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Vertigo;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->interruptMotion()V

    .line 5
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v0, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    const/16 v3, 0x8

    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    aget v0, v0, v3

    add-int/2addr p1, v0

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->passable:[Z

    aget-boolean v3, v3, p1

    if-nez v3, :cond_1

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->avoid:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->LARGE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->openSpace:[Z

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_3

    .line 8
    :cond_2
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    return-void

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v3, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->move(II)V

    .line 10
    :cond_5
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->map:[I

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget v0, v0, v3

    const/4 v4, 0x6

    if-ne v0, v4, :cond_8

    .line 11
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->chars()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    .line 12
    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    if-ne v4, v3, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_7
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heaps:Lcom/watabou/utils/SparseArray;

    invoke-virtual {v0, v3}, La/b/a/r/g;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    if-gt v1, v2, :cond_8

    const/4 v0, 0x5

    .line 14
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-static {v3, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->set(IILcom/shatteredpixel/shatteredpixeldungeon/levels/Level;)V

    .line 15
    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateMap(I)V

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_8

    .line 17
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 18
    :cond_8
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eq p0, v0, :cond_9

    .line 20
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean p1, v1, p1

    iput-boolean p1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 21
    :cond_9
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    invoke-virtual {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    return-void
.end method

.method public moveSprite(II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->isVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v2, v0, p1

    if-nez v2, :cond_0

    aget-boolean v0, v0, p2

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->move(II)V

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    return v1
.end method

.method public name()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "name"

    .line 1
    invoke-static {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttackComplete()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method

.method public onMotionComplete()V
    .locals 0

    return-void
.end method

.method public onOperateComplete()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method

.method public declared-synchronized onRemove()V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 2
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->detach()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public properties()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->remove(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resist(Ljava/lang/Class;)F
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->resistances:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    if-eqz v2, :cond_0

    .line 3
    new-instance v3, Ljava/util/HashSet;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->resistances:Ljava/util/HashSet;

    invoke-direct {v3, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_0
    throw v3

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    if-eqz v2, :cond_2

    .line 7
    new-instance v4, Ljava/util/HashSet;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->resistances:Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 9
    :cond_2
    throw v3

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 11
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    goto :goto_2

    .line 12
    :cond_5
    invoke-static {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfElements;->resist(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)F

    move-result p1

    mul-float p1, p1, v1

    return p1
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->restoreFromBundle(Lcom/watabou/utils/Bundle;)V

    const-string v0, "pos"

    .line 2
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const-string v0, "HP"

    .line 3
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const-string v0, "HT"

    .line 4
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    const-string v0, "buffs"

    .line 5
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getCollection(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/watabou/utils/Bundlable;

    if-eqz v1, :cond_0

    .line 6
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    invoke-virtual {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    goto :goto_0

    :cond_1
    const-string v0, "SHLD"

    .line 7
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 9
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Brimstone$BrimstoneShield;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;

    if-eqz v0, :cond_2

    .line 10
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    sub-int/2addr p1, v1

    :cond_2
    if-lez p1, :cond_3

    .line 11
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/BrokenSeal$WarriorShield;->supercharge(I)V

    :cond_3
    return-void
.end method

.method public shielding()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->needsShieldUpdate:Z

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->cachedShield:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->cachedShield:I

    .line 4
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs(Ljava/lang/Class;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;

    .line 5
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->cachedShield:I

    .line 6
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/ShieldBuff;->shielding:I

    add-int/2addr v3, v2

    .line 7
    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->cachedShield:I

    goto :goto_0

    .line 8
    :cond_1
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->needsShieldUpdate:Z

    .line 9
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->cachedShield:I

    return v0
.end method

.method public speed()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->baseSpeed:F

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Cripple;

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    div-float/2addr v0, v2

    .line 3
    :cond_0
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Stamina;

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float v0, v0, v1

    .line 4
    :cond_1
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Adrenaline;

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_2

    mul-float v0, v0, v2

    .line 5
    :cond_2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Haste;

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_3

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v0, v0, v1

    :cond_3
    return v0
.end method

.method public spend(F)V
    .locals 4

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Chill;

    .line 2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Slow;

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v1, :cond_0

    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Chill;

    .line 5
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->cooldown()F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float v0, v0, v1

    sub-float v0, v2, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float v2, v2, v0

    .line 6
    :cond_1
    :goto_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Speed;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v2, v2, v0

    :cond_2
    div-float/2addr p1, v2

    .line 7
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->spend(F)V

    return-void
.end method

.method public stealth()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->time:F

    const-string v1, "time"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;F)V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->id:I

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    const-string v1, "pos"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 4
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    const-string v1, "HP"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 5
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    const-string v1, "HT"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs:Ljava/util/HashSet;

    const-string v1, "buffs"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public declared-synchronized updateSpriteState()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buffs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->fx(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
