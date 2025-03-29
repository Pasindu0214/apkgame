.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;
.source "WndStartGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v1, v1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 4
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndMessage;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;

    .line 5
    iget-object v4, v4, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_desc_item"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
