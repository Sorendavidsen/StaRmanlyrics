#' Color palettes based on Taylor Swift's albums
#'
#' NB - DIREKTE KOPIERET - SÅ RET TIL!!!!
#'
#' Premade color palettes based on Taylor Swifts album covers. For details on
#' how to extend and shorten these palettes, or create your own color palette,
#' see [color_palette()].
#'
#' @format A list of length `r length(album_palettes)`. Each element contains a
#'   color palette for one of Taylor Swift's studio albums. The list elements
#'   are named according to the name of the album.
#'
#' @source Colors derived from album covers using 'Colormind'.
#' @seealso [color_palette()]
#' @export
#' @examples
#' album_palettes
#'
#' album_compare
#'
#' album_palettes$evermore
album_palettes <- lapply(list(david_bowie = c('#2C3123', '#7AD2D9', '#EAD4AD', '#AF8D61', '#54623E'),
  david_bowie_space_oddity = c('#545D41', '#94A57D', '#3CAA8D', '#0F98AE', '#186F73'),
  the_man_who_sold_the_world = c('#364B56', '#6C6467', '#918C8B', '#CCB4AC', '#478DAE'),
  hunky_dory = c('#433633', '#6F5A4B', '#BC9D85', '#EBC5BE', '#917C70'),
  the_rise_and_fall_of_ziggy_stardust_and_the_spiders_from_mars = c('#211C1B', '#B08553', '#E3D880', '#73634B', '#4A4039'),
  aladdin_sane = c('#452624', '#96403D', '#A1737A', '#E2D9DA', '#B6A0A4'),
  pin_ups = c('#4D210B', '#9F562D', '#C68F61', '#DFBAAD', '#7FA0C1'),
  diamond_dogs = c('#4B352E', '#8C5439', '#C9A052', '#D2C9B4', '#868582'),
  young_americans = c('#362927', '#A6979A', '#E9BEAF', '#E08462', '#88524C'),
  station_to_station = c('#373831', '#847D76', '#F5E6E4','#DAA09F', '#B6232E')),
  low = c('#443122', '#DDC089', '#D09940', '#B0642D', '#804C2F'),
  heroes = c('#1A1A1A', '#808080', '#E6E6E6', '#B3B3B3', '#4D4D4D'),
  lodger = c('#1E2016', '#79908A', '#B4B8AB', '#F2E4B9', '#5D5F40'),
  scary_monsters_and_super_creeps = c('#603D32', '#826B6E', '#A6A3A9', '#D9D2CE', '#D79F88'),
  lets_dance = c('#3F241F', '#A53A21', '#B68044', '#44A3BE', '#69534A'),
  tonight = c('#15202C', '#7D3720', '#D2B139', '#BCBFA8', '#5D7673'),
  never_let_me_down = c('#381B17', '#6D3A37', '#B08481', '#E2CBC9', '#B84C3A'),
  black_tie_white_noise = c('#1C172E', '#9A170E', '#D5B7A3', '#99817B', '#584F59'),
  the_buddha_of_suburbia = c('#2B2C1D', '#697572', '#99A2A8', '#CBD8E5', '#2A4B58'),
  outside = c('#363A32', '#796157', '#C9BAA7', '#ECE6D1', '#9D9282'),
  earthling = c('#272D34', '#A53B2B', '#B29467', '#467CB0', '#3C6F33'),
  hours = c('#343951', '#B4614B', '#C6D9E3', '#94AFC9', '#4F849C'),
  heathen = c('#232217', '#E17E2C', '#DBCBB1', '#948870', '#5E533F'),
  reality = c('#2B2121', '#6C7A76', '#E6E3D6', '#C0AE8D', '#C03F2F'),
  the_next_day = c('#191617', '#525151', '#EDEDED', '#B8B7B7', '#848283'),
  blackstar = c('#181818', '#7D7D7D', '#B0B0B0', '#E5E5E5', '#4A4A4A'),
  toy = c('#60605C', '#7E7A75', '#ECEDE9', '#C3CBBE', '#9DA09B'), color_palette)

#' @rdname album_palettes
#' @export
album_compare <- color_palette(
  c(taylor_swift   = "#1D4737",
    fearless       = "#CBA863",
    fearless_tv    = "#624324",
    speak_now      = "#833C63",
    speak_now_tv   = "#4a2454",
    red            = "#A91E47",
    red_tv         = "#731803",
    `1989`         = "#846578",
    `1989_tv`      = "#8BB5D2",
    reputation     = "#2C2C2C",
    lover          = "#EBBED3",
    folklore       = "#949494",
    evermore       = "#421E18",
    midnights      = "#5A658B",
    tortured_poets = "#1C160F")
)


#' Correct ordering of Taylor Swift's albums
#'
#' Easily create a factor variable for Taylor Swift's albums. Rather than
#' specifying each album individually, you can use this shortcut vector that has
#' already specified the ordering.
#'
#' @format A vector of length `r length(album_levels)`. Each element is an album
#'   name, in an order that can be used for making factor variables.
#'
#' @details
#' Albums are listed in release order, with one notable exception. The
#' "Taylor's Version" releases are list directly following the original. That
#' is, *Fearless (Taylor's Version)* comes directly after *Fearless*, rather
#' than after *evermore*, when it was released. This is because
#' "Taylor's Version" is often a stand-in for the original, as in
#' [`taylor_album_songs`]. Thus, it more often makes more sense for the album to
#' be placed with the original, rather than in the actual release order.
#' @export
#' @examples
#' library(ggplot2)
#' studio_albums <- subset(taylor_albums, !ep)
#'
#' # by default, albums get plotted in alphabetical order
#' ggplot(studio_albums, aes(x = metacritic_score, y = album_name)) +
#'   geom_col()
#'
#' # use `album_levels` to create a sensible factor variable
#' studio_albums$album_name <- factor(studio_albums$album_name,
#'                                    levels = album_levels)
#' ggplot(studio_albums, aes(x = metacritic_score, y = album_name)) +
#'   geom_col()
album_levels <- c("David Bowie", "The Man Who Sold the World", "Hunky Dory",
                  "The Rise and Fall of Ziggy Stardust and the Spiders from Mars",
                  "Aladdin Sane", "Pin Ups", "Diamond Dogs", "Young Americans",
                  "Station to Station", "Low", "'Heroes'", "Lodger",
                  "Scary Monsters (and Super Creeps)", "Let's Dance",
                  "Tonight", "Never Let Me Down", "Black Tie White Noise",
                  "The Buddha of Suburbia", "Outside", "Earthling", "Hours",
                  "Heathen", "Reality", "The Next Day", "Blackstar", "Toy")


# Scale functions --------------------------------------------------------------
taylor_col <- function(n, alpha = 1, begin = 0, end = 1, direction = 1,
                       album = "Lover") {
  begin <- check_real_range(begin, lb = 0, ub = 1)
  end <- check_real_range(end, lb = 0, ub = 1)
  direction <- check_exact_abs_int(direction, value = 1)

  if (n == 0) {
    return(character(0))
  }
  if (direction == -1) {
    tmp <- begin
    begin <- end
    end <- tmp
  }

  lookup_pal <- tolower(album)
  lookup_pal <- gsub("\\ ", "_", lookup_pal)
  lookup_pal <- gsub("\\(taylor's_version\\)", "tv", lookup_pal)
  lookup_pal <- gsub("the_(tortured_poets)_department", "\\1", lookup_pal)

  option <- switch(
    EXPR = lookup_pal,
    taylor_swift   = taylor::album_palettes[["taylor_swift"]],
    fearless       = taylor::album_palettes[["fearless"]],
    fearless_tv    = taylor::album_palettes[["fearless_tv"]],
    speak_now      = taylor::album_palettes[["speak_now"]],
    speak_now_tv   = taylor::album_palettes[["speak_now_tv"]],
    red            = taylor::album_palettes[["red"]],
    red_tv         = taylor::album_palettes[["red_tv"]],
    `1989`         = taylor::album_palettes[["1989"]],
    `1989_tv`      = taylor::album_palettes[["1989_tv"]],
    reputation     = taylor::album_palettes[["reputation"]],
    lover          = taylor::album_palettes[["lover"]],
    folklore       = taylor::album_palettes[["folklore"]],
    evermore       = taylor::album_palettes[["evermore"]],
    midnights      = taylor::album_palettes[["midnights"]],
    tortured_poets = taylor::album_palettes[["tortured_poets"]], {
      rlang::warn(paste0("Album '", album, "' does not exist. ",
                         "Defaulting to 'Lover'."))
      taylor::album_palettes[["lover"]]
    }
  )

  fn_cols <- grDevices::colorRamp(option, space = "Lab",
                                  interpolate = "spline")
  cols <- fn_cols(seq(begin, end, length.out = n)) / 255
  grDevices::rgb(cols[, 1], cols[, 2], cols[, 3], alpha = alpha)
}

taylor_pal <- function(alpha = 1, begin = 0, end = 1, direction = 1,
                       album = "Lover") {
  function(n) {
    taylor_col(n, alpha, begin, end, direction, album)
  }
}
