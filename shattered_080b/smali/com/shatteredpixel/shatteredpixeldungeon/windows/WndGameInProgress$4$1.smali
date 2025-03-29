.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "WndGameInProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4;->val$slot:I

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->gameFolder(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/watabou/utils/FileUtils;->deleteDir(Ljava/lang/String;)Z

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4;->val$slot:I

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->slotStates:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/StartScene;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ShatteredPixelDungeon;->switchNoFade(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
