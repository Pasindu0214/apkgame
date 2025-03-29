.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1;
.super Ljava/lang/Object;
.source "Dart.java"

# interfaces
.implements Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 14

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v1, v12, 0x1

    .line 5
    div-int/lit8 v11, v1, 0x2

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 7
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    const-string v2, "tip_cancel"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    new-array v1, v3, [Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v6, "tip_one"

    .line 8
    invoke-static {v0, v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    new-array v3, v5, [Ljava/lang/Object;

    .line 9
    invoke-static {v0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    move-object v9, v1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "tip_two"

    if-gt v12, v3, :cond_2

    new-array v6, v3, [Ljava/lang/String;

    new-array v7, v5, [Ljava/lang/Object;

    .line 10
    invoke-static {v0, v1, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v5

    new-array v1, v5, [Ljava/lang/Object;

    .line 11
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    goto :goto_0

    :cond_2
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/Object;

    .line 12
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "tip_all"

    invoke-static {v0, v8, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    new-array v7, v5, [Ljava/lang/Object;

    .line 13
    invoke-static {v0, v1, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    new-array v1, v5, [Ljava/lang/Object;

    .line 14
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    :goto_0
    move-object v9, v6

    const/4 v13, 0x2

    .line 15
    :goto_1
    move-object v1, p1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    invoke-static {v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->getTipped(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;

    move-result-object v1

    .line 16
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v6, "tip_title"

    invoke-static {v0, v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    .line 17
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const-string v5, "tip_desc"

    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->desc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v2

    move-object v5, p0

    move-object v8, v9

    move-object v10, p1

    invoke-direct/range {v4 .. v13}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;III)V

    .line 18
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method
