.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndResurrect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Ankh;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndResurrect;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->hide()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->ankhsUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->ankhsUsed:I

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;->RESURRECT:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;->mode:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene$Mode;

    .line 4
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/InterlevelScene;

    invoke-static {v0}, Lcom/watabou/noosa/Game;->switchScene(Ljava/lang/Class;)V

    return-void
.end method
