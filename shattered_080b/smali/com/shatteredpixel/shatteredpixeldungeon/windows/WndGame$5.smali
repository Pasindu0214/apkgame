.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$5;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->saveAll()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/TitleScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    return-void
.end method
