.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndGame.java"


# instance fields
.field public pos:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$1;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "settings"

    invoke-static {p0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->addButton(Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;)V

    .line 3
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    if-lez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$2;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "challenges"

    .line 5
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-direct {v1, p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->addButton(Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;)V

    .line 7
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 8
    :cond_1
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$3;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "start"

    .line 9
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-direct {v1, p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->addButton(Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;)V

    const v3, 0xffff44

    .line 11
    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->text:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 12
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$4;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "rankings"

    .line 13
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 14
    invoke-direct {v1, p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->addButton(Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;)V

    .line 15
    :cond_2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$5;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "menu"

    .line 16
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-direct {v1, p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$5;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;Ljava/lang/String;)V

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$6;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "exit"

    .line 18
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 19
    invoke-direct {v3, p0, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$6;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 21
    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->pos:I

    const/4 v5, 0x0

    if-lez v4, :cond_3

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->pos:I

    int-to-float v4, v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    const/high16 v6, 0x426c0000    # 59.0f

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-virtual {v1, v5, v4, v6, v7}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 22
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 23
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    add-float/2addr v4, v5

    .line 24
    iget v6, v1, Lcom/watabou/noosa/ui/Component;->y:F

    const/high16 v8, 0x42f00000    # 120.0f

    .line 25
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->right()F

    move-result v1

    sub-float/2addr v8, v1

    sub-float/2addr v8, v5

    invoke-virtual {v3, v4, v6, v8, v7}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 26
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->pos:I

    add-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->pos:I

    .line 27
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$7;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "return"

    .line 28
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-direct {v1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame$7;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->addButton(Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;)V

    const/16 v0, 0x78

    .line 30
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->pos:I

    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method


# virtual methods
.method public final addButton(Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->pos:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->pos:I

    int-to-float v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v2, 0x42f00000    # 120.0f

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 3
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->pos:I

    add-int/lit8 p1, p1, 0x14

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGame;->pos:I

    return-void
.end method
