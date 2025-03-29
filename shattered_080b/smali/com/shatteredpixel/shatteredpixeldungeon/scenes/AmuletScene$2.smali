.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene$2;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "AmuletScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene$2;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/AmuletScene;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->CONTINUE:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    .line 3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0
.end method
