.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;
.super Lcom/watabou/noosa/ui/Button;
.source "RankingsScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Record"
.end annotation


# static fields
.field public static final TEXT_LOSE:[I

.field public static final TEXT_WIN:[I


# instance fields
.field public classIcon:Lcom/watabou/noosa/Image;

.field public depth:Lcom/watabou/noosa/BitmapText;

.field public desc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

.field public flare:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

.field public level:Lcom/watabou/noosa/BitmapText;

.field public position:Lcom/watabou/noosa/BitmapText;

.field public rec:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;

.field public shield:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

.field public steps:Lcom/watabou/noosa/Image;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->TEXT_WIN:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->TEXT_LOSE:[I

    return-void

    :array_0
    .array-data 4
        0xffff88
        0xb2b25f
    .end array-data

    :array_1
    .array-data 4
        0xdddddd
        0x888888
    .end array-data
.end method

.method public constructor <init>(IZLcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/ui/Button;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->rec:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;

    if-eqz p2, :cond_1

    .line 3
    new-instance p2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/4 v0, 0x6

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-direct {p2, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;-><init>(IF)V

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->flare:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    const/high16 v0, 0x42b40000    # 90.0f

    .line 4
    iput v0, p2, Lcom/watabou/noosa/Visual;->angularSpeed:F

    .line 5
    iget-boolean v0, p3, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->win:Z

    if-eqz v0, :cond_0

    const v0, 0x888866

    goto :goto_0

    :cond_0
    const v0, 0x666666

    :goto_0
    invoke-virtual {p2, v0}, Lcom/watabou/noosa/Visual;->color(I)V

    .line 6
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->flare:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    invoke-virtual {p0, p2}, Lcom/watabou/noosa/Group;->addToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :cond_1
    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->position:Lcom/watabou/noosa/BitmapText;

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->position:Lcom/watabou/noosa/BitmapText;

    const-string v0, " "

    invoke-virtual {p2, v0}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 9
    :goto_1
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->position:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p2}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 10
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->desc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 11
    iget-object v0, p3, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->cause:Ljava/lang/Class;

    const-string v1, "something"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {p3, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-array v4, v2, [Ljava/lang/Object;

    const-string v5, "name"

    .line 13
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v4, "rankings_desc"

    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "!!!NO TEXT FOUND!!!"

    .line 14
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-array v0, v2, [Ljava/lang/Object;

    .line 15
    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;

    invoke-static {v2, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    :cond_4
    :goto_2
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 17
    rem-int/lit8 p1, p1, 0x2

    .line 18
    iget-boolean p2, p3, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->win:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    .line 19
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->shield:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->AMULET:I

    invoke-virtual {p2, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->view(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 20
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->position:Lcom/watabou/noosa/BitmapText;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->TEXT_WIN:[I

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 21
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->desc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->TEXT_WIN:[I

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 22
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->depth:Lcom/watabou/noosa/BitmapText;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->TEXT_WIN:[I

    aget v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 23
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->level:Lcom/watabou/noosa/BitmapText;

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->TEXT_WIN:[I

    aget p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    goto :goto_3

    .line 24
    :cond_5
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->position:Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->TEXT_LOSE:[I

    aget v1, v1, p1

    invoke-virtual {p2, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 25
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->desc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->TEXT_LOSE:[I

    aget v1, v1, p1

    invoke-virtual {p2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    .line 26
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->depth:Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->TEXT_LOSE:[I

    aget v1, v1, p1

    invoke-virtual {p2, v1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 27
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->level:Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->TEXT_LOSE:[I

    aget p1, v1, p1

    invoke-virtual {p2, p1}, Lcom/watabou/noosa/Visual;->hardlight(I)V

    .line 28
    iget p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->depth:I

    if-eqz p1, :cond_7

    .line 29
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p1}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 31
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->steps:Lcom/watabou/noosa/Image;

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->DEPTH:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    if-eqz p2, :cond_6

    .line 32
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object p2

    .line 33
    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 34
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->steps:Lcom/watabou/noosa/Image;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 35
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_3

    .line 36
    :cond_6
    throw v0

    .line 37
    :cond_7
    :goto_3
    iget p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->herolevel:I

    if-eqz p1, :cond_8

    .line 38
    iget-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->level:Lcom/watabou/noosa/BitmapText;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/watabou/noosa/BitmapText;->text(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->level:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p1}, Lcom/watabou/noosa/BitmapText;->measure()V

    .line 40
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->level:Lcom/watabou/noosa/BitmapText;

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 41
    :cond_8
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->classIcon:Lcom/watabou/noosa/Image;

    iget-object p2, p3, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;)Lcom/watabou/noosa/Image;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    .line 42
    iget-object p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    sget-object p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;->ROGUE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    if-ne p1, p2, :cond_9

    .line 43
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->classIcon:Lcom/watabou/noosa/Image;

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Visual;->brightness(F)V

    :cond_9
    return-void
.end method


# virtual methods
.method public createChildren()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->createChildren()V

    .line 2
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->TOMB:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->shield:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    const-string v2, ""

    .line 5
    invoke-direct {v0, v2, v1}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    .line 6
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->position:Lcom/watabou/noosa/BitmapText;

    .line 7
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v0, 0x7

    .line 8
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->desc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    .line 9
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 10
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    .line 11
    invoke-direct {v0, v2, v1}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    .line 12
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->depth:Lcom/watabou/noosa/BitmapText;

    .line 13
    new-instance v0, Lcom/watabou/noosa/Image;

    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->steps:Lcom/watabou/noosa/Image;

    .line 14
    new-instance v0, Lcom/watabou/noosa/Image;

    invoke-direct {v0}, Lcom/watabou/noosa/Image;-><init>()V

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->classIcon:Lcom/watabou/noosa/Image;

    .line 15
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 16
    new-instance v0, Lcom/watabou/noosa/BitmapText;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->pixelFont:Lcom/watabou/noosa/BitmapText$Font;

    .line 17
    invoke-direct {v0, v2, v1}, Lcom/watabou/noosa/BitmapText;-><init>(Ljava/lang/String;Lcom/watabou/noosa/BitmapText$Font;)V

    .line 18
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->level:Lcom/watabou/noosa/BitmapText;

    return-void
.end method

.method public layout()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/ui/Button;->layout()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->shield:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 3
    iget v1, p0, Lcom/watabou/noosa/ui/Component;->y:F

    iget v2, p0, Lcom/watabou/noosa/ui/Component;->height:F

    iget v3, v0, Lcom/watabou/noosa/Visual;->height:F

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v4, v1}, La/a/a/a/a;->a(FFFF)F

    move-result v1

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 4
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->position:Lcom/watabou/noosa/BitmapText;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->shield:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v2, v1, Lcom/watabou/noosa/Visual;->x:F

    iget v1, v1, Lcom/watabou/noosa/Visual;->width:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v4

    add-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->position:Lcom/watabou/noosa/BitmapText;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->shield:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v2, v1, Lcom/watabou/noosa/Visual;->y:F

    iget v1, v1, Lcom/watabou/noosa/Visual;->height:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v4

    add-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->position:Lcom/watabou/noosa/BitmapText;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->flare:Lcom/shatteredpixel/shatteredpixeldungeon/effects/Flare;

    if-eqz v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->shield:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v1}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->classIcon:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v3, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v1, v3

    const/high16 v3, 0x41800000    # 16.0f

    sub-float/2addr v1, v3

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v5

    sub-float v5, v3, v5

    div-float/2addr v5, v4

    add-float/2addr v5, v1

    iput v5, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->classIcon:Lcom/watabou/noosa/Image;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->shield:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v1, v1, Lcom/watabou/noosa/Visual;->y:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v5

    sub-float v5, v3, v5

    div-float/2addr v5, v4

    add-float/2addr v5, v1

    iput v5, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->classIcon:Lcom/watabou/noosa/Image;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->level:Lcom/watabou/noosa/BitmapText;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->classIcon:Lcom/watabou/noosa/Image;

    iget v5, v1, Lcom/watabou/noosa/Visual;->x:F

    iget v1, v1, Lcom/watabou/noosa/Visual;->width:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v6

    sub-float/2addr v1, v6

    div-float/2addr v1, v4

    add-float/2addr v1, v5

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->level:Lcom/watabou/noosa/BitmapText;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->classIcon:Lcom/watabou/noosa/Image;

    iget v5, v1, Lcom/watabou/noosa/Visual;->y:F

    iget v1, v1, Lcom/watabou/noosa/Visual;->height:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v6

    sub-float/2addr v1, v6

    div-float/2addr v1, v4

    add-float/2addr v1, v5

    add-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->level:Lcom/watabou/noosa/BitmapText;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->steps:Lcom/watabou/noosa/Image;

    iget v1, p0, Lcom/watabou/noosa/ui/Component;->x:F

    iget v5, p0, Lcom/watabou/noosa/ui/Component;->width:F

    add-float/2addr v1, v5

    const/high16 v5, 0x42000000    # 32.0f

    sub-float/2addr v1, v5

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v5

    sub-float v5, v3, v5

    div-float/2addr v5, v4

    add-float/2addr v5, v1

    iput v5, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->steps:Lcom/watabou/noosa/Image;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->shield:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v1, v1, Lcom/watabou/noosa/Visual;->y:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    iput v3, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->steps:Lcom/watabou/noosa/Image;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 19
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->depth:Lcom/watabou/noosa/BitmapText;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->steps:Lcom/watabou/noosa/Image;

    iget v3, v1, Lcom/watabou/noosa/Visual;->x:F

    iget v1, v1, Lcom/watabou/noosa/Visual;->width:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v5

    sub-float/2addr v1, v5

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    iput v1, v0, Lcom/watabou/noosa/Visual;->x:F

    .line 20
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->depth:Lcom/watabou/noosa/BitmapText;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->steps:Lcom/watabou/noosa/Image;

    iget v3, v1, Lcom/watabou/noosa/Visual;->y:F

    iget v1, v1, Lcom/watabou/noosa/Visual;->height:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v5

    sub-float/2addr v1, v5

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/watabou/noosa/Visual;->y:F

    .line 21
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->depth:Lcom/watabou/noosa/BitmapText;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/Visual;)V

    .line 22
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->desc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->steps:Lcom/watabou/noosa/Image;

    iget v1, v1, Lcom/watabou/noosa/Visual;->x:F

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->shield:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v5, v3, Lcom/watabou/noosa/Visual;->x:F

    iget v3, v3, Lcom/watabou/noosa/Visual;->width:F

    add-float/2addr v5, v3

    const/high16 v3, 0x40800000    # 4.0f

    add-float/2addr v5, v3

    sub-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->maxWidth(I)V

    .line 23
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->desc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->shield:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    iget v5, v1, Lcom/watabou/noosa/Visual;->x:F

    iget v6, v1, Lcom/watabou/noosa/Visual;->width:F

    add-float/2addr v5, v6

    add-float/2addr v5, v3

    iget v3, v1, Lcom/watabou/noosa/Visual;->y:F

    iget v1, v1, Lcom/watabou/noosa/Visual;->height:F

    .line 24
    iget v6, v0, Lcom/watabou/noosa/ui/Component;->height:F

    sub-float/2addr v1, v6

    div-float/2addr v1, v4

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    .line 25
    invoke-virtual {v0, v5, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 26
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->desc:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    return-void
.end method

.method public onClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene$Record;->rec:Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;->gameData:Lcom/watabou/utils/Bundle;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;

    invoke-direct {v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/Rankings$Record;)V

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndError;

    const-class v2, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/RankingsScene;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "no_info"

    invoke-static {v2, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    :goto_0
    return-void
.end method
