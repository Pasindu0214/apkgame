.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1$1;
.super Ljava/lang/Object;
.source "LloydsBeacon.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1;->onSelect(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1$1;->val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1$1;->val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    if-eqz v0, :cond_6

    const/16 v0, 0xa

    .line 2
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1$1;->val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v1

    add-int/lit8 v2, v0, -0x1

    const/4 v3, -0x1

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eq v1, v3, :cond_5

    :goto_1
    const/4 v0, 0x0

    if-eq v1, v3, :cond_4

    .line 3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->bossLevel()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1$1;->val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v2

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "tele_fail"

    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1$1;->val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 7
    instance-of v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    move-object v3, v0

    check-cast v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    if-ne v2, v3, :cond_3

    .line 8
    move-object v2, v0

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1$1;->val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon$1$1;->val$ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v1, v2, v1

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    goto :goto_3

    .line 11
    :cond_4
    :goto_2
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "no_tele"

    invoke-static {v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_0

    .line 12
    :cond_6
    :goto_3
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/LloydsBeacon;->access$1100()Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    return-void
.end method
