function [best_epsilon, best_F1, associated_precision, associated_recall] = optimal_threshold(truths, probabilities)

  best_epsilon = 0;
  best_F1 = 0;
  associated_precision = 0;
  associated_recall = 0;

  m = length(truths);
  pas = (max(probabilities) - min(probabilities)) / 1000;

  for epsilon = min(probabilities) : max(probabilities)
    epsilon = epsilon + pas;
    predictions = (probabilities < epsilon);

    tp = sum(predictions == 1 & truths == 1);
    fp = sum(predictions == 1 & truths == 0);
    fn = sum(predictions == 0 & truths == 1);

    precision = tp / (tp + fp);
    recall = tp / (tp + fn);

    F1 = (2 * precision * recall) / (precision + recall);
    if F1 > best_F1
      best_epsilon = epsilon;
      best_F1 = F1;
      associated_precision = precision;
      associated_recall = recall;
    endif
  endfor
endfunction

