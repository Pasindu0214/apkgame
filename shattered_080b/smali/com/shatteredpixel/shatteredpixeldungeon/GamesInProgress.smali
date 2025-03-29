.class public Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;
.super Ljava/lang/Object;
.source "GamesInProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;
    }
.end annotation


# static fields
.field public static curSlot:I

.field public static final scoreComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;",
            ">;"
        }
    .end annotation
.end field

.field public static selectedClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

.field public static slotStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->slotStates:Ljava/util/HashMap;

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$1;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$1;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->scoreComparator:Ljava/util/Comparator;

    return-void
.end method

.method public static check(I)Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;
    .locals 4

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->slotStates:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->slotStates:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "game%d"

    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Lcom/watabou/utils/FileUtils;->getFileHandle(Ljava/lang/String;)La/b/a/n/a;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, La/b/a/n/a;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, La/b/a/n/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->slotStates:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    .line 7
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->gameFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/watabou/utils/FileUtils;->bundleFromFile(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    .line 8
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;-><init>()V

    .line 9
    iput p0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->slot:I

    .line 10
    invoke-static {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->preview(Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;Lcom/watabou/utils/Bundle;)V

    .line 11
    iget v0, v2, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->version:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x108

    if-ge v0, v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 13
    :catch_1
    :goto_1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->slotStates:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static checkAll()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-gt v1, v2, :cond_1

    .line 2
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->check(I)Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->scoreComparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static depthFile(II)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->gameFolder(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, p0, v1

    const-string p1, "depth%d.dat"

    invoke-static {p1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static firstEmpty()I
    .locals 2

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 1
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->check(I)Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static gameFile(I)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->gameFolder(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "game.dat"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static gameFolder(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "game%d"

    invoke-static {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
