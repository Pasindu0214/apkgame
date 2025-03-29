.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$7;
.super Ljava/lang/Object;
.source "AlchemyScene.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$7;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    .line 2
    monitor-enter v0

    if-eqz p1, :cond_4

    .line 3
    :try_start_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    const/4 v2, 0x0

    .line 4
    aget-object v1, v1, v2

    if-eqz v1, :cond_4

    .line 5
    :goto_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    .line 6
    array-length v1, v1

    if-ge v2, v1, :cond_3

    .line 7
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    .line 8
    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-nez v1, :cond_2

    .line 9
    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;

    if-eqz v1, :cond_0

    .line 10
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    .line 11
    aget-object v1, v1, v2

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_1

    .line 12
    :cond_0
    instance-of v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    if-eqz v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$7;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->clearSlots()V

    .line 14
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    .line 15
    aget-object v1, v1, v2

    .line 16
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iput-object p1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_1

    .line 17
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    .line 18
    aget-object v1, v1, v2

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$7;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    .line 20
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->updateState()V

    .line 21
    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method
