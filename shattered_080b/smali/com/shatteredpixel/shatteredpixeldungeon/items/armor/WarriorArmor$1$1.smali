.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor$1$1;
.super Ljava/lang/Object;
.source "WarriorArmor.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor$1;->onSelect(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$dest:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor$1;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor$1$1;->val$dest:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor;->access$500()Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    move-result-object v0

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor$1$1;->val$dest:I

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->move(I)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 3
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 4
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->occupyCell(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog()V

    const/4 v0, 0x0

    .line 7
    :goto_0
    sget-object v1, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 8
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 9
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sget-object v2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS8:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eq v1, v2, :cond_0

    .line 11
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->alignment:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;->ALLY:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Alignment;

    if-eq v2, v3, :cond_0

    .line 12
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Paralysis;

    const/4 v3, 0x5

    int-to-float v3, v3

    invoke-static {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->prolong(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/WarriorArmor$1$1;->val$dest:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Ghost$Quest;->center(I)Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 14
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 15
    sget-object v0, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/Camera;->shake(FF)V

    .line 16
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/4 v1, 0x1

    int-to-float v1, v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    return-void
.end method
