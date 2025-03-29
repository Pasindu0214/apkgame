.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->createChildren()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;

.field public final synthetic val$idx:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;

    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$1;->val$idx:I

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$1;->val$idx:I

    .line 2
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->currentItemIdx:I

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;->access$500(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndJournal$CatalogTab;)V

    return-void
.end method
