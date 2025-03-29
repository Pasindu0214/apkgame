.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndKeyBindings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Lcom/watabou/input/GameAction;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

.field public final synthetic val$action:Lcom/watabou/input/GameAction;

.field public final synthetic val$firstKey:Z

.field public final synthetic val$listItem:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;Ljava/lang/String;ILcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;ZLcom/watabou/input/GameAction;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$listItem:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    iput-boolean p6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$firstKey:Z

    iput-object p7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$action:Lcom/watabou/input/GameAction;

    invoke-direct {p0, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    .line 2
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKeyCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 3
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 4
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 7
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    .line 8
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$listItem:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    .line 9
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1:I

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 12
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    .line 13
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$listItem:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    .line 14
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$firstKey:Z

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    .line 18
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKeyCode:I

    if-eqz v1, :cond_0

    .line 19
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 20
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$action:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$listItem:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    .line 23
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2:I

    if-eqz v0, :cond_1

    .line 24
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 25
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$action:Lcom/watabou/input/GameAction;

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$listItem:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    .line 28
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKeyCode:I

    .line 29
    iget v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2:I

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->updateBindings(II)V

    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$listItem:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    .line 32
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1:I

    if-eqz v0, :cond_3

    .line 33
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 34
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$action:Lcom/watabou/input/GameAction;

    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    .line 37
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKeyCode:I

    if-eqz v1, :cond_4

    .line 38
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 39
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$action:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->val$listItem:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    .line 42
    iget v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1:I

    .line 43
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    .line 44
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKeyCode:I

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->updateBindings(II)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    .line 47
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedAction:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    if-eqz v1, :cond_7

    .line 48
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key1:I

    .line 49
    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;->changedKeyCode:I

    const/4 v3, 0x0

    if-eq v2, v0, :cond_5

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->updateBindings(II)V

    goto :goto_1

    .line 51
    :cond_5
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->key2:I

    if-eq v2, v0, :cond_6

    .line 52
    invoke-virtual {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->updateBindings(II)V

    goto :goto_1

    .line 53
    :cond_6
    invoke-virtual {v1, v3, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->updateBindings(II)V

    .line 54
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding$2;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$WndChangeBinding;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    return-void
.end method
