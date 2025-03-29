.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;
.super Lcom/watabou/noosa/ui/Component;
.source "WndStartGame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HeroPane"
.end annotation


# instance fields
.field public avatar:Lcom/watabou/noosa/Image;

.field public cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

.field public heroItem:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

.field public heroLoadout:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

.field public heroMisc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

.field public heroSubclass:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

.field public name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;


# direct methods
.method public synthetic constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Component;-><init>()V

    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 5

    .line 1
    new-instance v0, Lcom/watabou/noosa/Image;

    .line 2
    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v1, "avatars.png"

    .line 3
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 4
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->avatar:Lcom/watabou/noosa/Image;

    .line 5
    iget-object v1, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v2, 0x40000000    # 2.0f

    .line 6
    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    .line 8
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$1;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroItem:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    const/high16 v1, 0x41a00000    # 20.0f

    .line 10
    invoke-virtual {v0, v1, v1}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroItem:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 12
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$2;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroLoadout:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    .line 13
    invoke-virtual {v0, v1, v1}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroLoadout:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$3;

    invoke-direct {v0, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroMisc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    .line 16
    invoke-virtual {v0, v1, v1}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroMisc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$4;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->MASTERY:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-direct {v0, p0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane$4;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;Lcom/watabou/noosa/Image;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroSubclass:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    .line 19
    invoke-virtual {v0, v1, v1}, Lcom/watabou/noosa/ui/Component;->setSize(FF)Lcom/watabou/noosa/ui/Component;

    .line 20
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroSubclass:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/16 v0, 0xc

    .line 21
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 22
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    return-void
.end method

.method public layout()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->avatar:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 2
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 3
    iget v3, v3, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    .line 4
    iput v2, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->avatar:Lcom/watabou/noosa/Image;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->avatar:Lcom/watabou/noosa/Image;

    .line 7
    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    iget-object v4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 8
    iget v4, v4, Lcom/watabou/noosa/ui/Component;->width:F

    invoke-static {v2, v4, v3, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    .line 9
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->avatar:Lcom/watabou/noosa/Image;

    iget v3, v2, Lcom/watabou/noosa/Visual;->y:F

    .line 10
    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->height()F

    move-result v2

    add-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    add-float/2addr v2, v3

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroItem:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v1, v2

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->y:F

    invoke-virtual {v0, v1, v3}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroLoadout:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v1, v3

    sub-float/2addr v1, v2

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroItem:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    invoke-virtual {v3}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroMisc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v1, v3

    sub-float/2addr v1, v2

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroLoadout:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    invoke-virtual {v3}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroSubclass:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v1, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroMisc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    return-void
.end method

.method public declared-synchronized update()V
    .locals 9

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/watabou/noosa/Group;->update()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->selectedClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    if-eq v0, v1, :cond_5

    .line 3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/GamesInProgress;->selectedClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->avatar:Lcom/watabou/noosa/Image;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v3, 0x18

    mul-int/lit8 v0, v0, 0x18

    const/16 v4, 0x20

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/watabou/noosa/Image;->frame(IIII)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->name:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->title()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->cl:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroItem:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SPIRIT_BOW:I

    invoke-direct {v3, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroLoadout:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->GLOVES:I

    invoke-direct {v3, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroMisc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    new-instance v8, Lcom/watabou/noosa/Image;

    const-string v3, "tiles_sewers.png"

    const/16 v4, 0x70

    const/16 v5, 0x60

    const/16 v6, 0x10

    const/16 v7, 0x10

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/watabou/noosa/Image;-><init>(Ljava/lang/Object;IIII)V

    invoke-virtual {v0, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroItem:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARTIFACT_CLOAK:I

    invoke-direct {v3, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroLoadout:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->DAGGER:I

    invoke-direct {v3, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroMisc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->DEPTH:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroItem:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->MAGES_STAFF:I

    invoke-direct {v3, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroLoadout:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->HOLDER:I

    invoke-direct {v3, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroMisc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WAND_MAGIC_MISSILE:I

    invoke-direct {v3, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroItem:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SEAL:I

    invoke-direct {v3, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroLoadout:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WORN_SHORTSWORD:I

    invoke-direct {v3, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->heroMisc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;

    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v4, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->RATION:I

    invoke-direct {v3, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    invoke-virtual {v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/IconButton;->icon(Lcom/watabou/noosa/Image;)V

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndStartGame$HeroPane;->layout()V

    .line 20
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    goto :goto_1

    .line 21
    :cond_4
    iput-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
