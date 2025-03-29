.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$GuideItem;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;
.source "WndJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GuideItem"
.end annotation


# instance fields
.field public found:Z

.field public page:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->GUIDE_PAGE:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;-><init>(ILcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;)V

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    .line 2
    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->pageTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    .line 3
    invoke-direct {p0, v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;-><init>(Lcom/watabou/noosa/Image;Ljava/lang/String;I)V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$GuideItem;->found:Z

    .line 5
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$GuideItem;->page:Ljava/lang/String;

    .line 6
    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->ADVENTURERS_GUIDE:Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;

    invoke-virtual {v1, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/journal/Document;->hasPage(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$GuideItem;->found:Z

    if-nez p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->icon:Lcom/watabou/noosa/Image;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1, v1, v1}, Lcom/watabou/noosa/Visual;->hardlight(FFF)V

    .line 8
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$GuideTab$GuideItem;

    const-string v2, "missing"

    invoke-static {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->titleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->text(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$ListItem;->label:Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;

    const v0, 0x999999

    invoke-virtual {p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RenderedTextBlock;->hardlight(I)V

    :cond_0
    return-void
.end method
