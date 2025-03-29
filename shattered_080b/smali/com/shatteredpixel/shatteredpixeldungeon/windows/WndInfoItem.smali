.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoItem;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndInfoItem.java"


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->HEAP:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;->FOR_SALE:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    goto :goto_0

    :cond_1
    const/16 v0, 0x78

    .line 4
    :goto_0
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V

    const v2, 0xffff44

    .line 5
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    int-to-float v2, v0

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v1, v3, v3, v2, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 7
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    iget-object v3, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->type:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap$Type;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 9
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->info()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :pswitch_0
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "remains_desc"

    .line 10
    invoke-static {p1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_1
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "skeleton_desc"

    .line 11
    invoke-static {p1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_2
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "tomb_desc"

    .line 12
    invoke-static {p1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 13
    :pswitch_3
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v3

    instance-of v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;

    const/4 v5, 0x1

    const-string v6, "crystal_chest_desc"

    if-eqz v3, :cond_2

    new-array v3, v5, [Ljava/lang/Object;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "artifact"

    .line 14
    invoke-static {p1, v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 15
    invoke-static {v2, v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v3

    instance-of v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    if-eqz v3, :cond_3

    new-array v3, v5, [Ljava/lang/Object;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "wand"

    .line 17
    invoke-static {p1, v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 18
    invoke-static {v2, v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    new-array v3, v5, [Ljava/lang/Object;

    new-array v5, v4, [Ljava/lang/Object;

    const-string v7, "ring"

    .line 19
    invoke-static {p1, v7, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    .line 20
    invoke-static {v2, v6, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_4
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "locked_chest_desc"

    .line 21
    invoke-static {p1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "chest_desc"

    .line 22
    invoke-static {p1, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const/4 v2, 0x6

    .line 23
    invoke-static {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    .line 24
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 25
    iget v2, v1, Lcom/watabou/noosa/ui/Component;->x:F

    .line 26
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v1, v3

    invoke-virtual {p1, v2, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 27
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 28
    invoke-virtual {p1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    add-float/2addr p1, v3

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    goto :goto_3

    .line 29
    :cond_4
    :goto_2
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->peek()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoItem;->fillFields(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndInfoItem;->fillFields(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    return-void
.end method


# virtual methods
.method public final fillFields(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x44ff44

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->levelKnown:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level()I

    move-result v0

    if-gez v0, :cond_1

    const v0, 0xff4444

    goto :goto_0

    :cond_1
    const v0, 0xffff44

    .line 3
    :goto_0
    invoke-static {}, Lcom/watabou/noosa/Scene;->landscape()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x90

    goto :goto_1

    :cond_2
    const/16 v1, 0x78

    .line 4
    :goto_1
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V

    .line 5
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    int-to-float v0, v1

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v2, v3, v3, v0, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 7
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->info()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 10
    iget v0, v2, Lcom/watabou/noosa/ui/Component;->x:F

    .line 11
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v2, v3

    invoke-virtual {p1, v0, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 12
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 13
    invoke-virtual {p1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result p1

    add-float/2addr p1, v3

    float-to-int p1, p1

    invoke-virtual {p0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method
