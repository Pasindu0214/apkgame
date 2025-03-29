.class public final Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1;
.super Ljava/lang/Object;
.source "Chasm.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1$1;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "chasm"

    .line 2
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "jump"

    .line 3
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "yes"

    .line 4
    invoke-static {v0, v7, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "no"

    .line 5
    invoke-static {v0, v6, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v5, v2

    invoke-direct {v1, p0, v3, v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/levels/features/Chasm$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 6
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->show(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;)V

    return-void
.end method
