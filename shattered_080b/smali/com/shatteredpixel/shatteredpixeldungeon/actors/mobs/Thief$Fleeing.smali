.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;
.super Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;
.source "Thief.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Fleeing"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$Fleeing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;)V

    return-void
.end method


# virtual methods
.method public nowhereToRun()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Terror;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Corruption;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->buff(Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    iget-boolean v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemySeen:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const/high16 v1, 0xff0000

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "rage"

    invoke-static {v3, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->HUNTING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eqz v1, :cond_6

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v3, v3, v0

    if-nez v3, :cond_6

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 6
    invoke-virtual {v1, v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_6

    const/16 v0, 0x20

    .line 7
    :goto_0
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    invoke-virtual {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->randomRespawnCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    const/4 v5, -0x1

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eq v3, v5, :cond_5

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v6, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    aget-boolean v6, v6, v3

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    iget v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, v3, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->distance(II)I

    move-result v0

    div-int/lit8 v6, v4, 0x3

    if-lt v0, v6, :cond_5

    :goto_1
    if-eq v3, v5, :cond_3

    .line 9
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v0, v0, v4

    const/4 v5, 0x0

    const/4 v6, 0x7

    if-eqz v0, :cond_2

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v4

    .line 10
    invoke-virtual {v0, v4, v5, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    iput v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 12
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->place(I)V

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->heroFOV:[Z

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    aget-boolean v7, v4, v0

    iput-boolean v7, v3, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 14
    aget-boolean v3, v4, v0

    if-eqz v3, :cond_3

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->get(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    invoke-static {v6}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v3

    .line 15
    invoke-virtual {v0, v3, v5, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eqz v0, :cond_4

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    const-string v0, "escapes"

    invoke-static {v1, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/utils/GLog;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 18
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    goto :goto_2

    :cond_5
    move v0, v4

    goto/16 :goto_0

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief$Fleeing;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Thief;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->WANDERING:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->state:Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob$AiState;

    :cond_7
    :goto_2
    return-void
.end method
