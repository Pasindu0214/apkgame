.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;
.source "Sheep.java"


# static fields
.field public static final LINE_KEYS:[Ljava/lang/String;


# instance fields
.field public initialized:Z

.field public lifespan:F


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Baa!"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Baa?"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Baa."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Baa..."

    aput-object v2, v0, v1

    .line 1
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;->LINE_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/NPC;-><init>()V

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SheepSprite;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->spriteClass:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;->initialized:Z

    return-void
.end method


# virtual methods
.method public act()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;->initialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->destroy()V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;->initialized:Z

    .line 6
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;->lifespan:F

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/watabou/utils/Random;->Float(F)F

    move-result v2

    add-float/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->spend(F)V

    :goto_0
    return v1
.end method

.method public add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;)V
    .locals 0

    return-void
.end method

.method public damage(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I
    .locals 0

    const p1, 0xf4240

    return p1
.end method

.method public interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Sheep;->LINE_KEYS:[Ljava/lang/String;

    invoke-static {v1}, Lcom/watabou/utils/Random;->element([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const v3, 0xffff00

    invoke-virtual {v0, v3, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
