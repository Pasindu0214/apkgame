.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;
.source "WndGameInProgress.java"


# instance fields
.field public GAP:I

.field public pos:F


# direct methods
.method public constructor <init>(I)V
    .locals 10

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;-><init>()V

    const/4 v1, 0x6

    .line 2
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->GAP:I

    .line 3
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->check(I)Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;

    move-result-object v1

    .line 4
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->subClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->NONE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;

    if-eq v2, v3, :cond_0

    .line 5
    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroSubClass;->title()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 6
    :cond_0
    iget-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->title()Ljava/lang/String;

    move-result-object v2

    .line 7
    :goto_0
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    .line 8
    iget-object v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    iget v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->armorTier:I

    invoke-static {v4, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->avatar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;I)Lcom/watabou/noosa/Image;

    move-result-object v4

    .line 9
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v3, v5}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    iput-object v4, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v3, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 11
    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const-string v2, "title"

    invoke-static {p0, v2, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 12
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    const v2, 0x33bb33

    .line 13
    iget-object v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    const/high16 v2, 0x42f00000    # 120.0f

    const/4 v5, 0x0

    .line 14
    invoke-virtual {v3, v5, v5, v2, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 15
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 16
    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$1;

    invoke-direct {v6, p0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;ILcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;)V

    .line 17
    iget-object v8, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v8}, Lcom/watabou/noosa/Visual;->width()F

    move-result v8

    iget-object v9, v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    iget v9, v9, Lcom/watabou/noosa/Visual;->height:F

    invoke-virtual {v6, v5, v5, v8, v9}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 18
    invoke-virtual {p0, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 19
    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->challenges:I

    if-lez v6, :cond_1

    iget v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->GAP:I

    sub-int/2addr v6, v4

    iput v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->GAP:I

    .line 20
    :cond_1
    invoke-virtual {v3}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v3

    iget v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->GAP:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->pos:F

    .line 21
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->challenges:I

    if-lez v3, :cond_2

    .line 22
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$2;

    new-array v4, v7, [Ljava/lang/Object;

    const-string v6, "challenges"

    .line 23
    invoke-static {v0, v6, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-direct {v3, p0, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;)V

    .line 25
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->reqWidth()F

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    add-float/2addr v4, v6

    sub-float/2addr v2, v4

    div-float/2addr v2, v6

    .line 26
    iget v8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->pos:F

    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->reqHeight()F

    move-result v9

    add-float/2addr v9, v6

    invoke-virtual {v3, v2, v8, v4, v9}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 27
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 28
    invoke-virtual {v3}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->GAP:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->pos:F

    .line 29
    :cond_2
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->pos:F

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->GAP:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->pos:F

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "str"

    .line 30
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 31
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->str:I

    invoke-virtual {p0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->statSlot(Ljava/lang/String;I)V

    .line 32
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->shld:I

    const-string v3, "health"

    const-string v4, "/"

    if-lez v2, :cond_3

    new-array v2, v7, [Ljava/lang/Object;

    .line 33
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->hp:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->shld:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->ht:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->statSlot(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-array v2, v7, [Ljava/lang/Object;

    .line 35
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->hp:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->ht:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->statSlot(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "exp"

    .line 37
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->exp:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->level:I

    invoke-static {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->maxExp(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->statSlot(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->pos:F

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->GAP:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->pos:F

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "gold"

    .line 40
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 41
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->goldCollected:I

    invoke-virtual {p0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->statSlot(Ljava/lang/String;I)V

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "depth"

    .line 42
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 43
    iget v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress$Info;->maxDepth:I

    invoke-virtual {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->statSlot(Ljava/lang/String;I)V

    .line 44
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->pos:F

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->GAP:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->pos:F

    .line 45
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$3;

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "continue"

    .line 46
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 47
    invoke-direct {v1, p0, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;Ljava/lang/String;I)V

    .line 48
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "erase"

    .line 49
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-direct {v2, p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;Ljava/lang/String;I)V

    const/high16 p1, 0x41a00000    # 20.0f

    const/high16 v0, 0x426c0000    # 59.0f

    const/high16 v3, 0x42c80000    # 100.0f

    .line 51
    invoke-virtual {v1, v5, v3, v0, p1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 52
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/high16 v1, 0x42740000    # 61.0f

    .line 53
    invoke-virtual {v2, v1, v3, v0, p1}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 54
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/16 p1, 0x78

    .line 55
    invoke-virtual {p0, p1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Window;->resize(II)V

    return-void
.end method


# virtual methods
.method public final statSlot(Ljava/lang/String;I)V
    .locals 0

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->statSlot(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final statSlot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x8

    .line 1
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->pos:F

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 3
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    invoke-static {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    .line 5
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->pos:F

    const/high16 v0, 0x42900000    # 72.0f

    invoke-virtual {p1, v0, p2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 6
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->pos:F

    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->GAP:I

    int-to-float v0, v0

    .line 9
    iget p1, p1, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr v0, p1

    add-float/2addr v0, p2

    .line 10
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndGameInProgress;->pos:F

    return-void
.end method
