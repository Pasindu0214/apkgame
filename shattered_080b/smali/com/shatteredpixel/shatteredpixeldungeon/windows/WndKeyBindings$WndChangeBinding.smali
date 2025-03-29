.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndKeyBindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WndChangeBinding"
.end annotation


# instance fields
.field public btnConfirm:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

.field public changedAction:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

.field public changedKey:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public changedKeyCode:I

.field public curKeyCode:I

.field public otherBoundKey:I

.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

.field public warnErr:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Lcom/watabou/input/GameAction;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;ZII)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 1
    const-class v10, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    iput-object v9, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    invoke-direct/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKeyCode:I

    move/from16 v0, p5

    .line 3
    iput v0, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->curKeyCode:I

    move/from16 v1, p6

    .line 4
    iput v1, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->otherBoundKey:I

    if-eqz p4, :cond_0

    const-string v1, "desc_first"

    goto :goto_0

    :cond_0
    const-string v1, "desc_second"

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 5
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    move-object/from16 v7, p2

    .line 6
    iget-object v4, v7, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    const/4 v11, 0x0

    new-array v5, v11, [Ljava/lang/Object;

    .line 7
    invoke-static {v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    .line 8
    invoke-static/range {p5 .. p5}, Lcom/watabou/input/KeyBindings;->getKeyName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x1

    aput-object v3, v2, v12

    .line 9
    invoke-static {v10, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    .line 10
    invoke-static {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    const/16 v13, 0x78

    .line 11
    invoke-virtual {v1, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 12
    iget v3, v1, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v4, 0x42f00000    # 120.0f

    const/4 v14, 0x0

    .line 13
    invoke-virtual {v1, v14, v14, v4, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 14
    invoke-virtual {v8, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    new-array v3, v12, [Ljava/lang/Object;

    .line 15
    invoke-static/range {p5 .. p5}, Lcom/watabou/input/KeyBindings;->getKeyName(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v11

    const-string v0, "desc_current"

    .line 16
    invoke-static {v10, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    .line 18
    invoke-virtual {v0, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 19
    iget v3, v0, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float v3, v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 20
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v6, 0x40c00000    # 6.0f

    add-float/2addr v1, v6

    .line 21
    iget v15, v0, Lcom/watabou/noosa/ui/Component;->height:F

    .line 22
    invoke-virtual {v0, v3, v1, v4, v15}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 23
    invoke-virtual {v8, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 24
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v1

    iput-object v1, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKey:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 25
    invoke-virtual {v1, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 26
    iget-object v1, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKey:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    add-float/2addr v0, v5

    iget-object v3, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKey:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 27
    iget v3, v3, Lcom/watabou/noosa/ui/Component;->height:F

    .line 28
    invoke-virtual {v1, v14, v0, v4, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 29
    iget-object v0, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKey:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v8, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 30
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->warnErr:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 31
    invoke-virtual {v0, v13}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 32
    iget-object v0, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->warnErr:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-object v1, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKey:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    add-float/2addr v1, v2

    iget-object v2, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->warnErr:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 33
    iget v2, v2, Lcom/watabou/noosa/ui/Component;->height:F

    .line 34
    invoke-virtual {v0, v14, v1, v4, v2}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 35
    iget-object v0, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->warnErr:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v8, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 36
    new-instance v15, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$1;

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "unbind"

    .line 37
    invoke-static {v10, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x9

    .line 38
    invoke-direct {v15, v8, v0, v5, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;Ljava/lang/String;ILcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;)V

    .line 39
    iget-object v0, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->warnErr:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    add-float/2addr v0, v6

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v15, v14, v0, v4, v6}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 40
    invoke-virtual {v8, v15}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 41
    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;

    new-array v0, v11, [Ljava/lang/Object;

    const-string v1, "confirm"

    .line 42
    invoke-static {v10, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v12, v4

    move-object/from16 v4, p1

    const/16 v13, 0x9

    move-object/from16 v5, p3

    const/high16 v13, 0x41800000    # 16.0f

    move/from16 v6, p4

    move-object/from16 v7, p2

    .line 43
    invoke-direct/range {v0 .. v7}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;Ljava/lang/String;ILcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;ZLcom/watabou/input/GameAction;)V

    iput-object v12, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->btnConfirm:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    .line 44
    invoke-virtual {v15}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-virtual {v12, v14, v0, v2, v13}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 45
    iget-object v0, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->btnConfirm:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {v0, v11}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    .line 46
    iget-object v0, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->btnConfirm:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {v8, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 47
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$3;

    new-array v2, v11, [Ljava/lang/Object;

    const-string v3, "cancel"

    .line 48
    invoke-static {v10, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x9

    .line 49
    invoke-direct {v0, v8, v2, v3, v9}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;Ljava/lang/String;ILcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;)V

    .line 50
    iget-object v2, v8, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->btnConfirm:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v2

    add-float/2addr v2, v1

    invoke-virtual {v15}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v3

    add-float/2addr v3, v1

    const/high16 v1, 0x426c0000    # 59.0f

    invoke-virtual {v0, v2, v3, v1, v13}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 51
    invoke-virtual {v8, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 52
    invoke-virtual {v0}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v0

    float-to-int v0, v0

    const/16 v1, 0x78

    invoke-virtual {v8, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    const/4 v0, 0x1

    .line 53
    sput-boolean v0, Lcom/watabou/input/KeyBindings;->acceptUnbound:Z

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->destroy()V

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/watabou/input/KeyBindings;->acceptUnbound:Z

    return-void
.end method

.method public onSignal(Lcom/watabou/input/KeyEvent;)Z
    .locals 7

    .line 2
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    iget-boolean v1, p1, Lcom/watabou/input/KeyEvent;->pressed:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 3
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKey:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p1, Lcom/watabou/input/KeyEvent;->code:I

    invoke-static {v4}, Lcom/watabou/input/KeyBindings;->getKeyName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "changed_bind"

    invoke-static {p0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKey:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v3, 0x42f00000    # 120.0f

    .line 5
    iget v4, v1, Lcom/watabou/noosa/ui/Component;->width:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 6
    iget v4, v1, Lcom/watabou/noosa/ui/Component;->y:F

    .line 7
    invoke-virtual {v1, v3, v4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 8
    iget v1, p1, Lcom/watabou/input/KeyEvent;->code:I

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKeyCode:I

    const/4 v3, 0x0

    .line 9
    iput-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedAction:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    if-eqz v1, :cond_1

    .line 10
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->curKeyCode:I

    if-eq v1, v3, :cond_0

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->otherBoundKey:I

    if-ne v1, v3, :cond_1

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->warnErr:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    new-array v1, v5, [Ljava/lang/Object;

    const-string v3, "error"

    .line 12
    invoke-static {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->warnErr:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const/high16 v0, 0xff0000

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 15
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->btnConfirm:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {p1, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    goto/16 :goto_0

    .line 16
    :cond_1
    iget p1, p1, Lcom/watabou/input/KeyEvent;->code:I

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 17
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    .line 18
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKeyCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 20
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->listItems:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    .line 22
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->gameAction:Lcom/watabou/input/GameAction;

    .line 23
    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 24
    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    .line 25
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKeyCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 26
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedAction:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->warnErr:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    new-array v1, v2, [Ljava/lang/Object;

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 28
    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    .line 29
    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKeyCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/watabou/input/GameAction;

    .line 30
    iget-object v4, v4, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    new-array v6, v5, [Ljava/lang/Object;

    .line 31
    invoke-static {v3, v4, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v3, "warning"

    .line 32
    invoke-static {v0, v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->warnErr:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v0, 0xff8800

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 35
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->btnConfirm:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    goto :goto_0

    .line 36
    :cond_4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->warnErr:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const-string v0, " "

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->btnConfirm:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->enable(Z)V

    :cond_5
    :goto_0
    return v2
.end method

.method public bridge synthetic onSignal(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/watabou/input/KeyEvent;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->onSignal(Lcom/watabou/input/KeyEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
