.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;
.super Lcom/watabou/noosa/ui/Component;
.source "WndKeyBindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BindingItem"
.end annotation


# instance fields
.field public actionName:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public gameAction:Lcom/watabou/input/GameAction;

.field public key1:I

.field public key1Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public key2:I

.field public key2Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public origKey1:I

.field public origKey2:I

.field public sep1:Lcom/watabou/noosa/ColorBlock;

.field public sep2:Lcom/watabou/noosa/ColorBlock;

.field public sep3:Lcom/watabou/noosa/ColorBlock;

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Lcom/watabou/input/GameAction;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->gameAction:Lcom/watabou/input/GameAction;

    .line 3
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 4
    iget-object v0, p2, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {p1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->actionName:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 6
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->setHightlighting(Z)V

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->actionName:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    invoke-static {p2}, Lcom/watabou/input/KeyBindings;->getBoundKeysForAction(Lcom/watabou/input/GameAction;)Ljava/util/ArrayList;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1:I

    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->origKey1:I

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2:I

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->origKey2:I

    .line 11
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1:I

    invoke-static {p1}, Lcom/watabou/input/KeyBindings;->getKeyName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 12
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1:I

    const v1, 0x888888

    if-nez p2, :cond_2

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 14
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2:I

    invoke-static {p1}, Lcom/watabou/input/KeyBindings;->getKeyName(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 15
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2:I

    if-nez p2, :cond_3

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 17
    new-instance p1, Lcom/watabou/noosa/ColorBlock;

    const p2, -0xddddde

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v0, p2}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->sep1:Lcom/watabou/noosa/ColorBlock;

    .line 18
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 19
    new-instance p1, Lcom/watabou/noosa/ColorBlock;

    invoke-direct {p1, v0, v0, p2}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->sep2:Lcom/watabou/noosa/ColorBlock;

    .line 20
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 21
    new-instance p1, Lcom/watabou/noosa/ColorBlock;

    invoke-direct {p1, v0, v0, p2}, Lcom/watabou/noosa/ColorBlock;-><init>(FFI)V

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->sep3:Lcom/watabou/noosa/ColorBlock;

    .line 22
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public layout()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->actionName:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 2
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget v4, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v2

    .line 3
    invoke-virtual {v0, v1, v3}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    .line 5
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    add-float/2addr v2, v4

    .line 6
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 7
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget v5, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    .line 8
    invoke-virtual {v0, v2, v3}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    const/high16 v2, 0x40400000    # 3.0f

    .line 10
    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    mul-float v3, v3, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    add-float/2addr v3, v4

    .line 11
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    .line 12
    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget v5, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v2, v5

    div-float/2addr v2, v4

    add-float/2addr v2, v1

    .line 13
    invoke-virtual {v0, v3, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->sep1:Lcom/watabou/noosa/ColorBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ColorBlock;->size(FF)V

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->sep1:Lcom/watabou/noosa/ColorBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 16
    invoke-virtual {p0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->sep2:Lcom/watabou/noosa/ColorBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0, v2, v1}, Lcom/watabou/noosa/ColorBlock;->size(FF)V

    .line 18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->sep2:Lcom/watabou/noosa/ColorBlock;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 19
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->x:F

    sub-float/2addr v1, v4

    .line 20
    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 21
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 22
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->sep3:Lcom/watabou/noosa/ColorBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0, v2, v1}, Lcom/watabou/noosa/ColorBlock;->size(FF)V

    .line 23
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->sep3:Lcom/watabou/noosa/ColorBlock;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 24
    iget v1, v1, Lcom/watabou/noosa/ui/Component;->x:F

    sub-float/2addr v1, v4

    .line 25
    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 26
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method

.method public updateBindings(II)V
    .locals 4

    if-nez p1, :cond_0

    .line 1
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1:I

    .line 2
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2:I

    goto :goto_0

    .line 3
    :cond_0
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1:I

    .line 4
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2:I

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1:I

    invoke-static {p2}, Lcom/watabou/input/KeyBindings;->getKeyName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 6
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1:I

    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->origKey1:I

    const v0, 0x888822

    const v1, 0xffff44

    const v2, 0x888888

    const v3, 0xffffff

    if-eq p1, p2, :cond_2

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    if-nez p1, :cond_1

    const p1, 0x888822

    goto :goto_1

    :cond_1
    const p1, 0xffff44

    :goto_1
    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    goto :goto_3

    .line 7
    :cond_2
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    if-nez p1, :cond_3

    const p1, 0x888888

    goto :goto_2

    :cond_3
    const p1, 0xffffff

    :goto_2
    invoke-virtual {p2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 8
    :goto_3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2:I

    invoke-static {p2}, Lcom/watabou/input/KeyBindings;->getKeyName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 9
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2:I

    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->origKey2:I

    if-eq p1, p2, :cond_5

    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const v0, 0xffff44

    :goto_4
    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    goto :goto_6

    .line 10
    :cond_5
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2Name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    if-nez p1, :cond_6

    goto :goto_5

    :cond_6
    const v2, 0xffffff

    :goto_5
    invoke-virtual {p2, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 11
    :goto_6
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->layout()V

    return-void
.end method
