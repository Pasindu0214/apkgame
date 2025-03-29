.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndKeyBindings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;
    }
.end annotation


# instance fields
.field public bindingsList:Lcom/watabou/noosa/ui/Component;

.field public changedBindings:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/watabou/input/GameAction;",
            ">;"
        }
    .end annotation
.end field

.field public listItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->listItems:Ljava/util/ArrayList;

    .line 3
    invoke-static {}, Lcom/watabou/input/KeyBindings;->getAllBindings()Ljava/util/LinkedHashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ttl_action"

    .line 4
    invoke-static {p0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v2

    .line 5
    iget v4, v2, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v6, 0x41f00000    # 30.0f

    sub-float/2addr v6, v4

    .line 6
    iget v4, v2, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v7, 0x41800000    # 16.0f

    sub-float v4, v7, v4

    div-float/2addr v4, v5

    .line 7
    invoke-virtual {v2, v6, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 8
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 9
    new-instance v2, Lcom/watabou/noosa/ColorBlock;

    const v4, -0xddddde

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v7, v4}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    const/high16 v8, 0x42700000    # 60.0f

    .line 10
    iput v8, v2, Lcom/watabou/noosa/Visual;->x:F

    .line 11
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "ttl_key1"

    .line 12
    invoke-static {v0, v9, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v2

    const/high16 v9, 0x42960000    # 75.0f

    .line 14
    iget v10, v2, Lcom/watabou/noosa/ui/Component;->width:F

    div-float/2addr v10, v5

    sub-float/2addr v9, v10

    .line 15
    iget v10, v2, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float v10, v7, v10

    div-float/2addr v10, v5

    .line 16
    invoke-virtual {v2, v9, v10}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 17
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    new-instance v2, Lcom/watabou/noosa/ColorBlock;

    invoke-direct {v2, v6, v7, v4}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    const/high16 v9, 0x42b40000    # 90.0f

    .line 19
    iput v9, v2, Lcom/watabou/noosa/Visual;->x:F

    .line 20
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v9, "ttl_key2"

    .line 21
    invoke-static {v0, v9, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 22
    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v2

    const/high16 v9, 0x42d20000    # 105.0f

    .line 23
    iget v10, v2, Lcom/watabou/noosa/ui/Component;->width:F

    div-float/2addr v10, v5

    sub-float/2addr v9, v10

    .line 24
    iget v10, v2, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float v10, v7, v10

    div-float/2addr v10, v5

    .line 25
    invoke-virtual {v2, v9, v10}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 26
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 27
    new-instance v2, Lcom/watabou/noosa/ColorBlock;

    const/high16 v5, 0x42f00000    # 120.0f

    invoke-direct {v2, v5, v6, v4}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    .line 28
    iput v7, v2, Lcom/watabou/noosa/Visual;->y:F

    .line 29
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 30
    new-instance v2, Lcom/watabou/noosa/ui/Component;

    invoke-direct {v2}, Lcom/watabou/noosa/ui/Component;-><init>()V

    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->bindingsList:Lcom/watabou/noosa/ui/Component;

    .line 31
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$1;

    invoke-direct {v4, p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Lcom/watabou/noosa/ui/Component;)V

    .line 32
    invoke-virtual {p0, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 33
    invoke-static {}, Lcom/watabou/input/GameAction;->allActions()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/watabou/input/GameAction;

    .line 34
    iget v13, v10, Lcom/watabou/input/GameAction;->code:I

    if-ge v13, v11, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    new-instance v11, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    invoke-direct {v11, p0, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Lcom/watabou/input/GameAction;)V

    int-to-float v9, v9

    const/high16 v10, 0x41400000    # 12.0f

    .line 36
    invoke-virtual {v11, v12, v9, v5, v10}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 37
    iget-object v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->bindingsList:Lcom/watabou/noosa/ui/Component;

    invoke-virtual {v10, v11}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 38
    iget-object v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    iget v10, v11, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v9, v10

    float-to-int v9, v9

    goto :goto_0

    .line 40
    :cond_1
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->bindingsList:Lcom/watabou/noosa/ui/Component;

    add-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual {v2, v5, v9}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    const/16 v2, 0x78

    .line 41
    iget-object v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->listItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    mul-int/lit8 v9, v9, 0xc

    add-int/lit8 v9, v9, 0x33

    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->uiCamera:Lcom/watabou/noosa/Camera;

    iget v10, v10, Lcom/watabou/noosa/Camera;->height:I

    add-int/lit8 v10, v10, -0x14

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {p0, v2, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    .line 42
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$2;

    new-array v9, v1, [Ljava/lang/Object;

    const-string v10, "default"

    .line 43
    invoke-static {v0, v10, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 44
    invoke-direct {v2, p0, v9, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Ljava/lang/String;I)V

    .line 45
    iget v9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->height:I

    add-int/lit8 v9, v9, -0x20

    sub-int/2addr v9, v11

    int-to-float v9, v9

    invoke-virtual {v2, v12, v9, v5, v7}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 46
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 47
    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$3;

    new-array v10, v1, [Ljava/lang/Object;

    const-string v11, "confirm"

    .line 48
    invoke-static {v0, v11, v10}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 49
    invoke-direct {v9, p0, v10, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Ljava/lang/String;I)V

    .line 50
    iget v10, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->height:I

    add-int/lit8 v10, v10, -0x10

    int-to-float v10, v10

    invoke-virtual {v9, v12, v10, v8, v7}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 51
    invoke-virtual {p0, v9}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 52
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$4;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v9, "cancel"

    .line 53
    invoke-static {v0, v9, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-direct {v8, p0, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Ljava/lang/String;I)V

    const/high16 v0, 0x42740000    # 61.0f

    .line 55
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->height:I

    add-int/lit8 v1, v1, -0x10

    int-to-float v1, v1

    const/high16 v3, 0x426c0000    # 59.0f

    invoke-virtual {v8, v0, v1, v3, v7}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 56
    invoke-virtual {p0, v8}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v0, 0x41880000    # 17.0f

    .line 57
    iget v1, v2, Lcom/watabou/noosa/ui/Component;->y:F

    sub-float/2addr v1, v7

    sub-float/2addr v1, v6

    .line 58
    invoke-virtual {v4, v12, v0, v5, v1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method
