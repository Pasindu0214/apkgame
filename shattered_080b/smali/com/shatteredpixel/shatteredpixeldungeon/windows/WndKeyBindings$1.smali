.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;
.source "WndKeyBindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Lcom/watabou/noosa/ui/Component;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/ScrollPane;-><init>(Lcom/watabou/noosa/ui/Component;)V

    return-void
.end method


# virtual methods
.method public onClick(FF)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->listItems:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    .line 4
    invoke-virtual {v5, p1, p2}, Lcom/watabou/noosa/ui/Component;->inside(FF)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    iget v1, v5, Lcom/watabou/noosa/ui/Component;->x:F

    const/high16 v2, 0x40400000    # 3.0f

    .line 6
    iget v3, v5, Lcom/watabou/noosa/ui/Component;->width:F

    mul-float v3, v3, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v3, v2

    add-float/2addr v3, v1

    cmpl-float v1, p1, v3

    if-ltz v1, :cond_1

    .line 7
    iget v8, v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1:I

    if-eqz v8, :cond_1

    .line 8
    sget-object v1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v1, v1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 9
    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    iget-object v3, v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    iget-object v4, v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->gameAction:Lcom/watabou/input/GameAction;

    const/4 v6, 0x0

    iget v7, v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Lcom/watabou/input/GameAction;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;ZII)V

    invoke-virtual {v1, v9}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 10
    :cond_1
    iget v1, v5, Lcom/watabou/noosa/ui/Component;->x:F

    .line 11
    iget v2, v5, Lcom/watabou/noosa/ui/Component;->width:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    cmpl-float v1, p1, v2

    if-ltz v1, :cond_2

    .line 12
    sget-object v1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v1, v1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 13
    new-instance v9, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    iget-object v3, v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    iget-object v4, v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->gameAction:Lcom/watabou/input/GameAction;

    const/4 v6, 0x1

    iget v7, v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1:I

    iget v8, v5, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2:I

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Lcom/watabou/input/GameAction;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;ZII)V

    invoke-virtual {v1, v9}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_2
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    :cond_4
    return-void
.end method
