.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;
.super Ljava/lang/Object;
.source "WandOfWarding.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->interact(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 8

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1$1;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "dismiss_title"

    invoke-static {v1, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "dismiss_body"

    .line 2
    invoke-static {v3, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "dismiss_confirm"

    .line 3
    invoke-static {v5, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "dismiss_cancel"

    .line 4
    invoke-static {v5, v6, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-direct {v0, p0, v1, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method
