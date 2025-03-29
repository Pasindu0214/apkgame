.class public Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;
.super Ljava/lang/Object;
.source "Journal.java"


# static fields
.field public static loaded:Z = false

.field public static saveNeeded:Z = false


# direct methods
.method public static loadGlobal()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->loaded:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "journal.dat"

    .line 2
    invoke-static {v0}, Lcom/watabou/utils/FileUtils;->bundleFromFile(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    new-instance v0, Lcom/watabou/utils/Bundle;

    invoke-direct {v0}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 4
    :goto_0
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->restore(Lcom/watabou/utils/Bundle;)V

    .line 5
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->restore(Lcom/watabou/utils/Bundle;)V

    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->loaded:Z

    return-void
.end method

.method public static saveGlobal()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->saveNeeded:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/watabou/utils/Bundle;

    invoke-direct {v0}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 3
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Catalog;->store(Lcom/watabou/utils/Bundle;)V

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->store(Lcom/watabou/utils/Bundle;)V

    :try_start_0
    const-string v1, "journal.dat"

    .line 5
    invoke-static {v1, v0}, Lcom/watabou/utils/FileUtils;->bundleToFile(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Journal;->saveNeeded:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
