.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$4;
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
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;Lcom/watabou/noosa/Image;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$4;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;-><init>(Lcom/watabou/noosa/Image;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$4;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$4;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;

    .line 4
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_desc_subclasses"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$4;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;

    .line 7
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    .line 8
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->subClasses:[Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    .line 9
    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    const-string v5, "\n\n"

    .line 10
    invoke-static {v0, v5}, La/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->desc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    sget-object v1, Lcom/watabou/noosa/Game;->instance:Lcom/watabou/noosa/Game;

    iget-object v1, v1, Lcom/watabou/noosa/Game;->scene:Lcom/watabou/noosa/Scene;

    .line 12
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndMessage;

    invoke-direct {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->addToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method
