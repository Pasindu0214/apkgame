.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;
.super Lcom/watabou/noosa/Group;
.source "WndHero.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatsTab"
.end annotation


# instance fields
.field public pos:F


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero;)V
    .locals 8

    .line 1
    const-class p1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;

    invoke-direct {p0}, Lcom/watabou/noosa/Group;-><init>()V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 3
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;

    invoke-direct {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;-><init>()V

    .line 4
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->heroClass:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->tier()I

    move-result v3

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/HeroSprite;->avatar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/HeroClass;I)Lcom/watabou/noosa/Image;

    move-result-object v2

    .line 5
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, v3}, Lcom/watabou/noosa/Group;->remove(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    iput-object v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->imIcon:Lcom/watabou/noosa/Image;

    invoke-virtual {v1, v2}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    const-string v5, "title"

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    new-array v2, v4, [Ljava/lang/Object;

    .line 9
    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v5, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 10
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v7

    .line 13
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->lvl:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->className()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {p0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 14
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    :goto_0
    const v2, 0x33bb33

    .line 15
    iget-object v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/IconTitle;->tfLabel:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    invoke-virtual {v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    const/high16 v2, 0x42e60000    # 115.0f

    const/4 v3, 0x0

    .line 16
    invoke-virtual {v1, v3, v3, v2, v3}, Lcom/watabou/noosa/ui/Component;->setRect(FFFF)Lcom/watabou/noosa/ui/Component;

    .line 17
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 18
    invoke-virtual {v1}, Lcom/watabou/noosa/ui/Component;->bottom()F

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->pos:F

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "str"

    .line 19
    invoke-static {p0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->STR()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->statSlot(Ljava/lang/String;I)V

    .line 20
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result v1

    const-string v2, "health"

    const-string v3, "/"

    if-lez v1, :cond_1

    new-array v1, v6, [Ljava/lang/Object;

    .line 21
    invoke-static {p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->shielding()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->statSlot(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-array v1, v6, [Ljava/lang/Object;

    .line 23
    invoke-static {p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->statSlot(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "exp"

    .line 25
    invoke-static {p1, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->exp:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->maxExp()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->statSlot(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->pos:F

    const/high16 v1, 0x40c00000    # 6.0f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->pos:F

    new-array v0, v6, [Ljava/lang/Object;

    const-string v2, "gold"

    .line 28
    invoke-static {p1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 29
    sget v2, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->goldCollected:I

    invoke-virtual {p0, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->statSlot(Ljava/lang/String;I)V

    new-array v0, v6, [Ljava/lang/Object;

    const-string v2, "depth"

    .line 30
    invoke-static {p1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 31
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/Statistics;->deepestFloor:I

    invoke-virtual {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->statSlot(Ljava/lang/String;I)V

    .line 32
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->pos:F

    add-float/2addr p1, v1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->pos:F

    return-void
.end method


# virtual methods
.method public final statSlot(Ljava/lang/String;I)V
    .locals 0

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->statSlot(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final statSlot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x8

    .line 1
    invoke-static {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    .line 2
    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->pos:F

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 3
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    invoke-static {p2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->renderTextBlock(Ljava/lang/String;I)Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    move-result-object p1

    .line 5
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->pos:F

    const/high16 v0, 0x428a0000    # 69.0f

    invoke-virtual {p1, v0, p2}, Lcom/watabou/noosa/ui/Component;->setPos(FF)Lcom/watabou/noosa/ui/Component;

    .line 6
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/PixelScene;->align(Lcom/watabou/noosa/ui/Component;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->pos:F

    .line 9
    iget p1, p1, Lcom/watabou/noosa/ui/Component;->height:F

    const/high16 v0, 0x40c00000    # 6.0f

    add-float/2addr p1, v0

    add-float/2addr p1, p2

    .line 10
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndHero$StatsTab;->pos:F

    return-void
.end method
