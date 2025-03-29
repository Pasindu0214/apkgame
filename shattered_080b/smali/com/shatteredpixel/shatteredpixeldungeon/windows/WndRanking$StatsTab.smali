.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;
.super Lcom/watabou/noosa/Group;
.source "WndRanking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatsTab"
.end annotation


# instance fields
.field public GAP:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;)V
    .locals 7

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;

    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    const/4 v1, 0x5

    .line 2
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->GAP:I

    .line 3
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    const/4 v3, 0x1

    if-lez v2, :cond_0

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->GAP:I

    .line 4
    :cond_0
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    .line 6
    sget-object v4, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v5, v4, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v4}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->tier()I

    move-result v4

    invoke-static {v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->avatar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;I)Lcom/watabou/noosa/Image;

    move-result-object v4

    .line 7
    iget-object v5, v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v2, v5}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    iput-object v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v2, v4}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 9
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v5, v5, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    aput-object v1, v4, v3

    const-string v1, "title"

    invoke-static {p0, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    const v1, 0x33bb33

    .line 11
    iget-object v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    const/high16 v1, 0x42e60000    # 115.0f

    const/4 v3, 0x0

    .line 12
    invoke-virtual {v2, v3, v3, v1, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 13
    invoke-virtual {p0, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 14
    invoke-virtual {v2}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->GAP:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 15
    sget v3, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->challenges:I

    if-lez v3, :cond_1

    .line 16
    new-instance v3, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab$1;

    new-array v4, v6, [Ljava/lang/Object;

    const-string v5, "challenges"

    .line 17
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-direct {v3, p0, v4, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking;)V

    .line 19
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->reqWidth()F

    move-result p1

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr p1, v4

    sub-float/2addr v1, p1

    div-float/2addr v1, v4

    .line 20
    invoke-virtual {v3}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/StyledButton;->reqHeight()F

    move-result v5

    add-float/2addr v5, v4

    invoke-virtual {v3, v1, v2, p1, v5}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 21
    invoke-virtual {p0, v3}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 22
    invoke-virtual {v3}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v2

    .line 23
    :cond_1
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->GAP:I

    int-to-float p1, p1

    add-float/2addr v2, p1

    new-array p1, v6, [Ljava/lang/Object;

    const-string v1, "str"

    .line 24
    invoke-static {v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p0, p1, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->statSlot(Lcom/watabou/noosa/Group;Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "health"

    .line 26
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 27
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p0, v1, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->statSlot(Lcom/watabou/noosa/Group;Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    .line 28
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->GAP:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "duration"

    .line 29
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 30
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->duration:F

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p0, v1, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->statSlot(Lcom/watabou/noosa/Group;Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    .line 31
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->GAP:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "depth"

    .line 32
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 33
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p0, v1, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->statSlot(Lcom/watabou/noosa/Group;Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "enemies"

    .line 34
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 35
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->enemiesSlain:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p0, v1, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->statSlot(Lcom/watabou/noosa/Group;Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "gold"

    .line 36
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 37
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->goldCollected:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p0, v1, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->statSlot(Lcom/watabou/noosa/Group;Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    .line 38
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->GAP:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "food"

    .line 39
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 40
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->foodEaten:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p0, v1, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->statSlot(Lcom/watabou/noosa/Group;Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "alchemy"

    .line 41
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 42
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->potionsCooked:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p0, v1, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->statSlot(Lcom/watabou/noosa/Group;Ljava/lang/String;Ljava/lang/String;F)F

    move-result p1

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "ankhs"

    .line 43
    invoke-static {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->ankhsUsed:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p0, v0, v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->statSlot(Lcom/watabou/noosa/Group;Ljava/lang/String;Ljava/lang/String;F)F

    return-void
.end method


# virtual methods
.method public final statSlot(Lcom/watabou/noosa/Group;Ljava/lang/String;Ljava/lang/String;F)F
    .locals 2

    const/4 v0, 0x7

    .line 1
    invoke-static {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p2, v1, p4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 3
    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    invoke-static {p3, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p2

    const/high16 p3, 0x42a10000    # 80.5f

    .line 5
    invoke-virtual {p2, p3, p4}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 6
    invoke-static {p2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 7
    invoke-virtual {p1, p2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndRanking$StatsTab;->GAP:I

    int-to-float p1, p1

    add-float/2addr p4, p1

    .line 9
    iget p1, p2, Lcom/watabou/noosa/ui/Component;->height:F

    add-float/2addr p4, p1

    return p4
.end method
