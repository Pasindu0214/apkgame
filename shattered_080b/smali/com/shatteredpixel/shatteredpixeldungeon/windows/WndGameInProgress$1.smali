.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$1;
.super Lcom/watabou/noosa/ui/Button;
.source "WndGameInProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$info:Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

.field public final synthetic val$slot:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;ILcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$1;->val$slot:I

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$1;->val$info:Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick()Z
    .locals 6

    .line 1
    :try_start_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$1;->val$slot:I

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->gameFile(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/watabou/utils/FileUtils;->bundleFromFile(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v1, v1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 3
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndMessage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_Debug Info:_\n\nVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/watabou/noosa/Game;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/watabou/noosa/Game;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")\nSeed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "seed"

    .line 4
    iget-object v0, v0, Lcom/watabou/utils/Bundle;->data:Lb/a/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 5
    :try_start_1
    invoke-virtual {v0, v4}, Lb/a/c;->f(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 v4, 0x0

    .line 6
    :goto_0
    :try_start_2
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\nChallenge Mask: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$1;->val$info:Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->challenges:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndMessage;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 8
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :goto_1
    const/4 v0, 0x1

    return v0
.end method
