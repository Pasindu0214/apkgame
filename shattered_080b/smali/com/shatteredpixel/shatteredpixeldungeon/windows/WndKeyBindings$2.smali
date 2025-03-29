.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
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
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    invoke-direct {p0, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->getDefaults()Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 2
    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 4
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->listItems:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;

    .line 6
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 7
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 9
    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;

    .line 10
    iget-object v6, v6, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings;->changedBindings:Ljava/util/LinkedHashMap;

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 12
    iget-object v7, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->gameAction:Lcom/watabou/input/GameAction;

    if-ne v6, v7, :cond_0

    if-nez v3, :cond_1

    move v3, v5

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndKeyBindings$BindingItem;->updateBindings(II)V

    goto :goto_0

    :cond_3
    return-void
.end method
