.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;
.super Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;
.source "AlchemyScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$AlchemyProvider;,
        Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;
    }
.end annotation


# static fields
.field public static inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

.field public static provider:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$AlchemyProvider;


# instance fields
.field public btnCombine:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

.field public bubbleEmitter:Lcom/watabou/noosa/particles/Emitter;

.field public energyCost:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public energyLeft:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

.field public lowerBubbles:Lcom/watabou/noosa/particles/Emitter;

.field public output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

.field public smokeEmitter:Lcom/watabou/noosa/particles/Emitter;

.field public water:Lcom/watabou/noosa/SkinnedBlock;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    .line 1
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;-><init>()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$7;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$7;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->itemSelector:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;

    return-void
.end method

.method public static availableEnergy()I
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->provider:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$AlchemyProvider;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$AlchemyProvider;->getEnergy()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public clearSlots()V
    .locals 5

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    :try_start_0
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 3
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eqz v2, :cond_1

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    instance-of v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    if-nez v2, :cond_0

    .line 5
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 7
    :cond_0
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 8
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SOMETHING:I

    invoke-direct {v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final combine()V
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->filterInput(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->findRecipe(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->provider:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$AlchemyProvider;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->cost(Ljava/util/ArrayList;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$AlchemyProvider;->spendEnergy(I)V

    .line 4
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->energyLeft:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const-class v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->availableEnergy()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "energy"

    invoke-static {v5, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 5
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->energyLeft:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    sget-object v5, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v6, v5, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v6, v6

    .line 6
    iget v7, v4, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    .line 7
    iget v5, v5, Lcom/watabou/noosa/Camera;->height:I

    add-int/lit8 v5, v5, -0x5

    int-to-float v5, v5

    .line 8
    iget v7, v4, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v5, v7

    .line 9
    invoke-virtual {v4, v6, v5}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 10
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->brew(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_6

    .line 11
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->bubbleEmitter:Lcom/watabou/noosa/particles/Emitter;

    const/16 v4, 0xc

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v4

    const v5, 0x3c23d70a    # 0.01f

    const/16 v6, 0x64

    invoke-virtual {v1, v4, v5, v6}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 12
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->smokeEmitter:Lcom/watabou/noosa/particles/Emitter;

    const/4 v4, 0x7

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v4

    const/16 v5, 0xa

    const/4 v6, 0x0

    .line 13
    invoke-virtual {v1, v4, v6, v5}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 14
    sget-object v1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "snd_puff.mp3"

    .line 15
    invoke-virtual {v1, v5, v4, v4, v4}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 16
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 17
    instance-of v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    if-nez v1, :cond_1

    .line 18
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 19
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v1, v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    .line 20
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->saveAll()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 22
    :goto_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    monitor-enter v0

    const/4 v1, 0x0

    .line 23
    :goto_2
    :try_start_1
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    array-length v4, v4

    if-ge v1, v4, :cond_5

    .line 24
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v4, v4, v1

    if-eqz v4, :cond_4

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eqz v4, :cond_4

    .line 25
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 26
    iget v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-lez v4, :cond_3

    .line 27
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    instance-of v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/AlchemistsToolkit;

    if-eqz v4, :cond_2

    goto :goto_3

    .line 28
    :cond_2
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    goto :goto_4

    .line 29
    :cond_3
    :goto_3
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v4, v4, v1

    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->slot:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;

    sget v6, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SOMETHING:I

    invoke-direct {v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Placeholder;-><init>(I)V

    invoke-virtual {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 30
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v4, v4, v1

    iput-object v2, v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    :cond_4
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 31
    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->btnCombine:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    goto :goto_5

    :catchall_0
    move-exception v1

    .line 33
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_6
    :goto_5
    return-void
.end method

.method public create()V
    .locals 15

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->create()V

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$1;

    sget-object v2, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v3, v2, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v3, v3

    iget v2, v2, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v2, v2

    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 3
    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->waterTex()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, p0, v3, v2, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;FFLjava/lang/Object;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->water:Lcom/watabou/noosa/SkinnedBlock;

    .line 4
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 5
    new-instance v1, Lcom/watabou/noosa/Image;

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Lcom/watabou/gltextures/TextureCache;->createGradient([I)Lcom/watabou/gltextures/SmartTexture;

    move-result-object v2

    .line 6
    invoke-direct {v1}, Lcom/watabou/noosa/Image;-><init>()V

    .line 7
    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    const/high16 v2, 0x42b40000    # 90.0f

    .line 8
    iput v2, v1, Lcom/watabou/noosa/Visual;->angle:F

    .line 9
    sget-object v2, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v3, v2, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v4, v3

    iput v4, v1, Lcom/watabou/noosa/Visual;->x:F

    .line 10
    iget-object v4, v1, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v2, v2, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v2, v2

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v2, v5

    iput v2, v4, Lcom/watabou/utils/PointF;->x:F

    int-to-float v2, v3

    .line 11
    iput v2, v4, Lcom/watabou/utils/PointF;->y:F

    .line 12
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "title"

    .line 13
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    .line 14
    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v2

    const v3, 0xffff44

    .line 15
    invoke-virtual {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 16
    sget-object v3, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v3, v3, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v3, v3

    .line 17
    iget v4, v2, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 18
    iget v6, v2, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v7, 0x41a00000    # 20.0f

    sub-float/2addr v7, v6

    div-float/2addr v7, v4

    .line 19
    invoke-virtual {v2, v3, v7}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 20
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 21
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    sget-object v2, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v3, v2, Lcom/watabou/noosa/Camera;->width:I

    div-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x32

    sub-int/2addr v3, v6

    .line 23
    div-int/lit8 v3, v3, 0x2

    .line 24
    iget v2, v2, Lcom/watabou/noosa/Camera;->height:I

    add-int/lit8 v2, v2, -0x64

    div-int/lit8 v2, v2, 0x2

    const/4 v7, 0x6

    .line 25
    invoke-static {v7}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v7

    .line 26
    invoke-virtual {v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    new-array v8, v1, [Ljava/lang/Object;

    const-string v9, "text"

    .line 27
    invoke-static {v0, v9, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    int-to-float v8, v3

    int-to-float v9, v6

    .line 28
    iget v10, v7, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-static {v9, v10, v4, v8}, La/a/a/a/a;->a(FFFF)F

    move-result v9

    int-to-float v2, v2

    .line 29
    invoke-virtual {v7, v9, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 30
    invoke-virtual {p0, v7}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 31
    iget v7, v7, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v9, 0x40c00000    # 6.0f

    add-float/2addr v7, v9

    add-float/2addr v7, v2

    float-to-int v2, v7

    .line 32
    sget-object v7, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    monitor-enter v7

    const/4 v10, 0x0

    .line 33
    :goto_0
    :try_start_0
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    array-length v11, v11

    const/high16 v12, 0x41e00000    # 28.0f

    if-ge v10, v11, :cond_0

    .line 34
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    new-instance v13, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$2;

    invoke-direct {v13, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;)V

    aput-object v13, v11, v10

    .line 35
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v11, v11, v10

    add-int/lit8 v13, v3, 0xa

    int-to-float v13, v13

    int-to-float v14, v2

    invoke-virtual {v11, v13, v14, v12, v12}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 36
    sget-object v11, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v11, v11, v10

    invoke-virtual {p0, v11}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v2, v2, 0x1e

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 37
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$3;

    const-string v10, ""

    invoke-direct {v7, p0, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->btnCombine:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 39
    invoke-virtual {v7, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    .line 40
    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->btnCombine:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    add-int/lit8 v10, v6, -0x1e

    int-to-float v10, v10

    div-float/2addr v10, v4

    add-float/2addr v10, v8

    sget-object v8, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    const/4 v11, 0x1

    aget-object v13, v8, v11

    .line 41
    iget v13, v13, Lcom/watabou/noosa/ui/Component;->y:F

    add-float/2addr v13, v5

    const/high16 v5, 0x41f00000    # 30.0f

    .line 42
    aget-object v8, v8, v11

    .line 43
    iget v8, v8, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v14, 0x41200000    # 10.0f

    sub-float/2addr v8, v14

    .line 44
    invoke-virtual {v7, v10, v13, v5, v8}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 45
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->btnCombine:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {p0, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 46
    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$4;

    invoke-direct {v5, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;)V

    iput-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, -0x1c

    add-int/lit8 v3, v3, -0xa

    int-to-float v3, v3

    .line 47
    sget-object v6, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    aget-object v6, v6, v11

    .line 48
    iget v6, v6, Lcom/watabou/noosa/ui/Component;->y:F

    .line 49
    invoke-virtual {v5, v3, v6, v12, v12}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 50
    new-instance v3, Lcom/watabou/noosa/ColorBlock;

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    .line 51
    iget v6, v5, Lcom/watabou/noosa/ui/Component;->width:F

    .line 52
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->height:F

    const v7, -0x666e6c74

    .line 53
    invoke-direct {v3, v6, v5, v7}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    .line 54
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    .line 55
    iget v6, v5, Lcom/watabou/noosa/ui/Component;->x:F

    .line 56
    iput v6, v3, Lcom/watabou/noosa/Visual;->x:F

    .line 57
    iget v5, v5, Lcom/watabou/noosa/ui/Component;->y:F

    .line 58
    iput v5, v3, Lcom/watabou/noosa/Visual;->y:F

    .line 59
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 60
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-virtual {p0, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 61
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iput-boolean v1, v5, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 62
    new-instance v5, Lcom/watabou/noosa/particles/Emitter;

    invoke-direct {v5}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    iput-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->bubbleEmitter:Lcom/watabou/noosa/particles/Emitter;

    .line 63
    new-instance v5, Lcom/watabou/noosa/particles/Emitter;

    invoke-direct {v5}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    iput-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->smokeEmitter:Lcom/watabou/noosa/particles/Emitter;

    .line 64
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->bubbleEmitter:Lcom/watabou/noosa/particles/Emitter;

    sget-object v6, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v7, v6, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v7, v7

    iget v6, v6, Lcom/watabou/noosa/Camera;->height:I

    int-to-float v6, v6

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v8, v7, v6}, Lcom/watabou/noosa/particles/Emitter;->pos(FFFF)V

    .line 65
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->smokeEmitter:Lcom/watabou/noosa/particles/Emitter;

    iget v6, v3, Lcom/watabou/noosa/Visual;->x:F

    add-float/2addr v6, v9

    iget v3, v3, Lcom/watabou/noosa/Visual;->y:F

    add-float/2addr v3, v9

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v5, v6, v3, v7, v7}, Lcom/watabou/noosa/particles/Emitter;->pos(FFFF)V

    .line 66
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->bubbleEmitter:Lcom/watabou/noosa/particles/Emitter;

    iput-boolean v1, v3, Lcom/watabou/noosa/particles/Emitter;->autoKill:Z

    .line 67
    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->smokeEmitter:Lcom/watabou/noosa/particles/Emitter;

    iput-boolean v1, v5, Lcom/watabou/noosa/particles/Emitter;->autoKill:Z

    .line 68
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 69
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->smokeEmitter:Lcom/watabou/noosa/particles/Emitter;

    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    add-int/lit8 v2, v2, 0xa

    .line 70
    new-instance v3, Lcom/watabou/noosa/particles/Emitter;

    invoke-direct {v3}, Lcom/watabou/noosa/particles/Emitter;-><init>()V

    iput-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->lowerBubbles:Lcom/watabou/noosa/particles/Emitter;

    int-to-float v5, v2

    .line 71
    sget-object v6, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v7, v6, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v7, v7

    iget v6, v6, Lcom/watabou/noosa/Camera;->height:I

    sub-int/2addr v6, v2

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3, v8, v5, v7, v2}, Lcom/watabou/noosa/particles/Emitter;->pos(FFFF)V

    .line 72
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->lowerBubbles:Lcom/watabou/noosa/particles/Emitter;

    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 73
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->lowerBubbles:Lcom/watabou/noosa/particles/Emitter;

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v3

    const v5, 0x3dcccccd    # 0.1f

    .line 74
    invoke-virtual {v2, v3, v5, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 75
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$5;

    invoke-direct {v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$5;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;)V

    .line 76
    sget-object v3, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v3, v3, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v3, v3

    .line 77
    iget v5, v2, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v3, v5

    .line 78
    invoke-virtual {v2, v3, v8}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 79
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 80
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$6;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v5, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ALCH_PAGE:I

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-direct {v2, p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$6;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;Lcom/watabou/noosa/Image;)V

    const/high16 v3, 0x41a00000    # 20.0f

    .line 81
    invoke-virtual {v2, v8, v8, v3, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 82
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    new-array v2, v11, [Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->availableEnergy()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "energy"

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->energyLeft:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 84
    sget-object v1, Lcom/watabou/noosa/Camera;->main:Lcom/watabou/noosa/Camera;

    iget v2, v1, Lcom/watabou/noosa/Camera;->width:I

    int-to-float v2, v2

    .line 85
    iget v3, v0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    .line 86
    iget v1, v1, Lcom/watabou/noosa/Camera;->height:I

    add-int/lit8 v1, v1, -0x5

    int-to-float v1, v1

    .line 87
    iget v3, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v1, v3

    .line 88
    invoke-virtual {v0, v2, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 89
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->energyLeft:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v0, 0x6

    .line 90
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->energyCost:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 91
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 92
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->fadeIn()V

    .line 93
    :try_start_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->saveAll()V

    .line 94
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveGlobal()V

    .line 95
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->saveGlobal()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 96
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 97
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2

    nop

    :array_0
    .array-data 4
        0x66000000
        -0x78000000
        -0x56000000
        -0x34000000    # -3.3554432E7f
        -0x1000000
    .end array-data
.end method

.method public destroy()V
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->clearSlots()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->saveAll()V

    .line 7
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Badges;->saveGlobal()V

    .line 8
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->saveGlobal()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 9
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 10
    :goto_1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->destroy()V

    return-void

    :catchall_0
    move-exception v1

    .line 11
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public final filterInput(Ljava/lang/Class;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->inputs:[Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene$ItemButton;->item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    return-void
.end method

.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Scene;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->water:Lcom/watabou/noosa/SkinnedBlock;

    sget v1, Lcom/watabou/noosa/Game;->elapsed:F

    const/high16 v2, -0x3f600000    # -5.0f

    mul-float v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/watabou/noosa/SkinnedBlock;->offset(FF)V

    return-void
.end method

.method public final updateState()V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->filterInput(Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->findRecipe(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->cost(Ljava/util/ArrayList;)I

    move-result v3

    .line 4
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Recipe;->sampleOutput(Ljava/util/ArrayList;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;->item(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->energyCost:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const-class v4, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "cost"

    invoke-static {v4, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->energyCost:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->btnCombine:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 8
    iget v5, v4, Lcom/watabou/noosa/ui/Component;->x:F

    .line 9
    iget v6, v4, Lcom/watabou/noosa/ui/Component;->width:F

    iget v7, v0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v7, v8, v5}, La/a/a/a/a;->a(FFFF)F

    move-result v5

    .line 10
    iget v4, v4, Lcom/watabou/noosa/ui/Component;->y:F

    .line 11
    iget v6, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v4, v6

    .line 12
    invoke-virtual {v0, v5, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->energyCost:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    if-lez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 14
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->availableEnergy()I

    move-result v0

    if-gt v3, v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->btnCombine:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->energyCost:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->resetColor()V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->btnCombine:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    .line 18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->energyCost:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v1, 0xff0000

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->btnCombine:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    .line 20
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->output:Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;

    iput-boolean v2, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 21
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AlchemyScene;->energyCost:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iput-boolean v2, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    :goto_1
    return-void
.end method
